require 'spec_helper'

RSpec.describe OneviewSDK::API800::Synergy::UplinkSet do
  include_context 'shared context'

  it 'inherits from OneviewSDK::API600::Synergy::UplinkSet' do
    expect(described_class).to be < OneviewSDK::API600::Synergy::UplinkSet
  end
end