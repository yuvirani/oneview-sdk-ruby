# (C) Copyright 2018 Hewlett Packard Enterprise Development LP
#
# Licensed under the Apache License, Version 2.0 (the "License");
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed
# under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
# CONDITIONS OF ANY KIND, either express or implied. See the License for the
# specific language governing permissions and limitations under the License.

require 'spec_helper'

klass = OneviewSDK::ImageStreamer::API500::BuildPlan
RSpec.describe klass, integration_i3s: true, type: UPDATE do
  include_context 'integration i3s api500 context'

  describe '#update' do
    it 'updates the name of the build plan' do
      item = klass.find_by($client_i3s_500, name: BUILD_PLAN1_NAME).first
      expect(item).to be
      item['name'] = BUILD_PLAN1_NAME_UPDATED
      expect { item.update }.not_to raise_error
      item.retrieve!
      expect(item['name']).to eq(BUILD_PLAN1_NAME_UPDATED)
      item['name'] = BUILD_PLAN1_NAME
      expect { item.update }.not_to raise_error
      item.retrieve!
      expect(item['name']).to eq(BUILD_PLAN1_NAME)
    end
  end
end
