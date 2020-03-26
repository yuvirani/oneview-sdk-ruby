# (C) Copyright 2017 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

require_relative '../_client' # Gives access to @client

# Example: Create/Update/Delete fc network
# NOTE: This will create an fc network named 'OneViewSDK Test FC Network', update it and then delete it.
#   It will create a bulk of fc networks and then delete them.
#
# Supported APIs:
# - API200 for C7000
# - API300 for C7000
# - API300 for Synergy
# - API500 for C7000
# - API500 for Synergy
# - API600 for C7000
# - API600 for Synergy

# Resources that can be created according to parameters:
# api_version = 200 & variant = any to OneviewSDK::API200::FCNetwork
# api_version = 300 & variant = C7000 to OneviewSDK::API300::C7000::FCNetwork
# api_version = 300 & variant = Synergy to OneviewSDK::API300::C7000::FCNetwork
# api_version = 500 & variant = C7000 to OneviewSDK::API500::C7000::FCNetwork
# api_version = 500 & variant = Synergy to OneviewSDK::API500::C7000::FCNetwork
# api_version = 600 & variant = C7000 to OneviewSDK::API600::C7000::FCNetwork
# api_version = 600 & variant = Synergy to OneviewSDK::API600::C7000::FCNetwork

# Resource Class used in this sample
fc_network_class = OneviewSDK.resource_named('FCNetwork', @client.api_version)

# Scope class used in this sample
scope_class = OneviewSDK.resource_named('Scope', @client.api_version) unless @client.api_version.to_i <= 200

options = {
  name: 'OneViewSDK Test FC Network',
  connectionTemplateUri: nil,
  autoLoginRedistribution: true,
  fabricType: 'FabricAttach',
  initialScopeUris: ['/rest/scopes/a5f8ca3d-2cea-4f82-b880-344572eb7271', '/rest/scopes/e0f6b95a-67a6-4718-b42c-1f7d426b730c']
}

fc = fc_network_class.new(@client, options)
fc.create!
puts "\nCreated fc-network '#{fc[:name]}' sucessfully.\n  uri = '#{fc[:uri]}'"
