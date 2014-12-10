module Tests
  module ExampleData
    class DraftProduct
      include TestAbstractions::DataObject
      
      attribute :title
      attribute :publisher

      def self.example
        draft_product = new
        draft_product.title= 'Product 505'
        draft_product.publisher= "Rock 'N Learn (michelle@rocknlearn.com)"
        draft_product
      end
    end
  end
end
