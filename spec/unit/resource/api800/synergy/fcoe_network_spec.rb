require 'spec_helper'

RSpec.describe OneviewSDK::API800::Synergy::FCoENetwork do
  include_context 'shared context'

  it 'inherits from OneviewSDK::API600::Synergy::FCoENetwork' do
    expect(described_class).to be < OneviewSDK::API600::Synergy::FCoENetwork
  end
end