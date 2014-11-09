module SignUpTest
  module Interactions
    module SignUp      
      class Form
        include TestAbstractions::Form

        uri '/sign_ups/new'
        actuator '#save'

        def name=(name)
          fields.name.set name
        end

        def email_address=(email_address)
          fields.email_address.set email_address
        end

        class Fields
          include TestAbstractions::Fields

          def name
            client.find('#sign_up_name')
          end

          def email_address
            client.find('#sign_up_email_address')
          end
        end
      end

      class Evidence
        include TestAbstractions::Evidence

        def signed_up?
          client.has_content?('Some Name')
        end        
      end
    end
  end
end
