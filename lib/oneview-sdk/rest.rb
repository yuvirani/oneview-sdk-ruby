require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module OneviewSDK
  # Contains all the methods for making API REST calls
  module Rest
    # Make a restful API request to OneView
    # @param [Symbol] type The rest method/type Options: [:get, :post, :delete, :patch, :put]
    # @param [String] path The path for the request. Usually starts with "/rest/"
    # @param [Hash] options The options for the request
    # @option options [String] :body Hash to be converted into json and set as the request body
    # @option options [String] :Content-Type ('application/json') Set to nil or :none to have this option removed
    # @option options [Integer] :X-API-Version (client.api_version) API version to use for this request
    # @option options [Integer] :auth (client.token) Authentication token to use for this request
    # @raise [RuntimeError] if SSL validation of OneView instance's certificate failed
    # @return [NetHTTPResponse] Response object
    def rest_api(type, path, options = {}, api_ver = @api_version)
      @logger.debug "Making :#{type} rest call to #{@url}#{path}"
      fail 'Must specify path' unless path

      uri = URI.parse(URI.escape(@url + path))
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true if uri.scheme == 'https'
      if @ssl_enabled
        http.cert_store = @cert_store if @cert_store
      else http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end

      request = build_request(type, uri, options, api_ver)
      response = http.request(request)
      @logger.debug "  Response: Code=#{response.code}. Headers=#{response.to_hash}\n  Body=#{response.body}"
      response
    rescue OpenSSL::SSL::SSLError => e
      msg = 'SSL verification failed for request. Please either:'
      msg += "\n  1. Install the certificate into your system's cert store"
      msg += ". Using cert store: #{ENV['SSL_CERT_FILE']}" if ENV['SSL_CERT_FILE']
      msg += "\n  2. Run oneview-sdk-ruby cert import #{@url}"
      msg += "\n  3. Set the :ssl_enabled option to false for your client (NOT RECOMMENDED)"
      @logger.error msg
      raise e
    end

    # Make a restful GET request to OneView
    # Parameters & return value align with those of the {OneviewSDK::Rest::rest_api} method above
    def rest_get(path, api_ver = @api_version)
      rest_api(:get, path, {}, api_ver)
    end

    # Make a restful POST request to OneView
    # Parameters & return value align with those of the {OneviewSDK::Rest::rest_api} method above
    def rest_post(path, options = {}, api_ver = @api_version)
      rest_api(:post, path, options, api_ver)
    end

    # Make a restful PUT request to OneView
    # Parameters & return value align with those of the {OneviewSDK::Rest::rest_api} method above
    def rest_put(path, options = {}, api_ver = @api_version)
      rest_api(:put, path, options, api_ver)
    end

    # Make a restful PATCH request to OneView
    # Parameters & return value align with those of the {OneviewSDK::Rest::rest_api} method above
    def rest_patch(path, options = {}, api_ver = @api_version)
      rest_api(:patch, path, options, api_ver)
    end

    # Make a restful DELETE request to OneView
    # Parameters & return value align with those of the {OneviewSDK::Rest::rest_api} method above
    def rest_delete(path, options = {}, api_ver = @api_version)
      rest_api(:delete, path, options, api_ver)
    end

    RESPONSE_CODE_OK           = 200
    RESPONSE_CODE_CREATED      = 201
    RESPONSE_CODE_ACCEPTED     = 202
    RESPONSE_CODE_NO_CONTENT   = 204
    RESPONSE_CODE_BAD_REQUEST  = 400
    RESPONSE_CODE_UNAUTHORIZED = 401
    RESPONSE_CODE_NOT_FOUND    = 404

    # Handle the response from a rest call.
    #   If an asynchronous task was started, this waits for it to complete.
    # @param [HTTPResponse] response HTTP response
    # @param [Boolean] wait_on_task Wait on task (or just return task details)
    # @raise [RuntimeError] if the request failed
    # @raise [RuntimeError] if a task was returned that did not complete successfully
    # @return [Hash] The parsed JSON body
    def response_handler(response, wait_on_task = true)
      case response.code.to_i
      when RESPONSE_CODE_OK # Synchronous read/query
        begin
          return JSON.parse(response.body)
        rescue JSON::ParserError => e
          @logger.warn "Failed to parse JSON response. #{e}"
          return response.body
        end
      when RESPONSE_CODE_CREATED # Synchronous add
        return JSON.parse(response.body)
      when RESPONSE_CODE_ACCEPTED # Asynchronous add, update or delete
        return JSON.parse(response.body) unless wait_on_task
        @logger.debug "Waiting for task: response.header['location']"
        task = wait_for(response.header['location'])
        return true unless task['associatedResource'] && task['associatedResource']['resourceUri']
        resource_data = rest_get(task['associatedResource']['resourceUri'])
        return JSON.parse(resource_data.body)
      when RESPONSE_CODE_NO_CONTENT # Synchronous delete
        return {}
      when RESPONSE_CODE_BAD_REQUEST
        fail "400 BAD REQUEST #{response.body}"
      when RESPONSE_CODE_UNAUTHORIZED
        fail "401 UNAUTHORIZED #{response.body}"
      when RESPONSE_CODE_NOT_FOUND
        fail "404 NOT FOUND #{response.body}"
      else
        fail "#{response.code} #{response.body}"
      end
    end


    private

    # Build a request object using the data given
    def build_request(type, uri, options, api_ver)
      case type.downcase.to_sym
      when :get
        request = Net::HTTP::Get.new(uri.request_uri)
      when :post
        request = Net::HTTP::Post.new(uri.request_uri)
      when :put
        request = Net::HTTP::Put.new(uri.request_uri)
      when :patch
        request = Net::HTTP::Patch.new(uri.request_uri)
      when :delete
        request = Net::HTTP::Delete.new(uri.request_uri)
      else
        fail "Invalid rest call: #{type}"
      end

      options['X-API-Version'] ||= api_ver
      options['auth'] ||= @token
      options['Content-Type'] ||= 'application/json'
      options.delete('Content-Type')  if [:none, 'none', nil].include?(options['Content-Type'])
      options.delete('X-API-Version') if [:none, 'none', nil].include?(options['X-API-Version'])
      options.delete('auth')          if [:none, 'none', nil].include?(options['auth'])
      options.each do |key, val|
        if key.to_s.downcase == 'body'
          request.body = val.to_json rescue val
        else
          request[key] = val
        end
      end

      filtered_options = options.to_s
      filtered_options.gsub!(@password, 'filtered') if @password
      filtered_options.gsub!(@token, 'filtered') if @token
      @logger.debug "  Options: #{filtered_options}"

      request
    end
  end
end