module Tests
  module Interactions
    module DraftProduct   
      class Form
        include TestAbstractions::Form

        uri '/products/new'
        actuator '#save-as-draft'

        def title=(title)
          fields.title.set title
        end

        def publisher=(publisher)
          fields.publisher.select publisher
        end

        class Fields
          include TestAbstractions::Fields

          def title
            client.find('#product_title')
          end

          def publisher
            client.find("#product_publisher_id")
          end
        end
      end

      class Evidence
        include TestAbstractions::Evidence

        def created_draft_product?
          client.has_content?('Product 505')
        end        
      end
    end
  end
end
