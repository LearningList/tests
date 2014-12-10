module Tests
  module Interactions
    module SubmittedProduct   
      class Form
        include TestAbstractions::Form

        uri '/products/new'
        actuator '#submit'

        def title=(title)
          fields.title.set title
        end

        def publisher=(publisher)
          fields.product_publisher_id.select publisher
        end

        class Fields
          include TestAbstractions::Fields

          def title
            client.find('#product_title')
          end

          def product_publisher_id
            client.find('#product_publisher_id')
          end
        end
      end

      class Evidence
        include TestAbstractions::Evidence

        def created_submitted_product?
          client.has_content?('Product 505')
        end        
      end
    end
  end
end
