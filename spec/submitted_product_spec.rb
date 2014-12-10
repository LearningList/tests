require_relative 'spec_init'

describe Interactions::SubmittedProduct do

  let(:login_data) { ExampleData::Login.example }
  let(:login) { Interactions::Login::Form.build }

  before do
    login.open
    login.fill login_data
    login.actuate
  end

  let(:product_data) { ExampleData::SubmittedProduct.example }
  let(:evidence) { new_submitted_product.! }
  let(:created_submitted_product) { evidence.created_submitted_product? }

  subject(:new_submitted_product) { Interactions::SubmittedProduct::Form.build }

  before do
    new_submitted_product.open
    new_submitted_product.fill product_data
  end

  specify 'created submitted product' do
    created_submitted_product.should == true
  end
end
