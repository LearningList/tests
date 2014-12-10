require_relative 'spec_init'

describe Interactions::DraftProduct do

  let(:login_data) { ExampleData::Login.example }
  let(:login) { Interactions::Login::Form.build }

  before do
    login.open
    login.fill login_data
    login.actuate
  end

  let(:product_data) { ExampleData::DraftProduct.example }
  let(:evidence) { new_draft_product.! }
  let(:created_draft_product) { evidence.created_draft_product? }

  subject(:new_draft_product) { Interactions::DraftProduct::Form.build }

  before do
    new_draft_product.open
    new_draft_product.fill product_data
  end

  specify 'created draft product' do
    created_draft_product.should == true
  end
end
