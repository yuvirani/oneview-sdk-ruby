require 'spec_helper'

klass = OneviewSDK::API500::Synergy::ServerProfile
RSpec.describe klass, integration: true, type: UPDATE do
  let(:current_client) { $client_500_synergy }
  let(:server_hardware_type_name) { SERVER_HARDWARE_TYPE2_NAME }
  let(:storage_system_ip) { $secrets_synergy['storage_system1_ip'] }
  include_examples 'ServerProfileUpdateExample', 'integration api500 context'
end
