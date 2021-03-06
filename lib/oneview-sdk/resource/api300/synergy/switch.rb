# (C) Copyright 2016 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require_relative '../../api200/switch'

module OneviewSDK
  module API300
    module Synergy
      # Switch resource implementation
      class Switch

        # Retrieves the switch types
        # @param [OneviewSDK::Client] client The client object for the OneView appliance
        # @return [Array] All the Switch types
        def self.get_types(client)
          OneviewSDK::API200::Switch.get_types(client)
        end

        # Retrieves the switch type with the name
        # @param [OneviewSDK::Client] client The client object for the OneView appliance
        # @param [String] name Switch type name
        # @return [Array] Switch type
        def self.get_type(client, name)
          OneviewSDK::API200::Switch.get_type(client, name)
        end
      end
    end
  end
end
