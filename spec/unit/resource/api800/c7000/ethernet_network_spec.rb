require 'spec_helper'

RSpec.describe OneviewSDK::API800::C7000::EthernetNetwork do
  include_context 'shared context'

  it 'inherits from OneviewSDK::API600::C7000::EthernetNetwork' do
    expect(described_class).to be < OneviewSDK::API600::C7000::EthernetNetwork
  end
end