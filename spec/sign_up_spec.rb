require_relative 'spec_init'

describe Interactions::SignUp do
  let(:sign_up_data) { ExampleData::Signup.example }
  let(:evidence) { sign_up.! }
  let(:signed_up) { evidence.signed_up? }

  subject(:sign_up) { Interactions::SignUp::Form.build }

  before do
    sign_up.open
    sign_up.fill sign_up_data
  end

  specify 'signed up' do
    signed_up.should == true
  end
end
