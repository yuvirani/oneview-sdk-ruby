require 'spec_helper'

RSpec.describe OneviewSDK::API300::Synergy::InternalLinkSet do
  include_context 'shared context'

  it 'inherits from OneviewSDK::API300::C7000::InternalLinkSet' do
    expect(described_class).to be < OneviewSDK::API300::C7000::InternalLinkSet
  end
end