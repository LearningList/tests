module Tests
  module Interactions
    module Login     
      class Form
        include TestAbstractions::Form

        uri '/admins/sign_in'
        actuator '#login'

        def admin_email=(admin_email)
          fields.admin_email.set admin_email
        end

        def admin_password=(admin_password)
          fields.admin_password.set admin_password
        end

        class Fields
          include TestAbstractions::Fields

          def admin_email
            client.find('#admin_email')
          end

          def admin_password
            client.find('#admin_password')
          end
        end
      end
    end
  end
end
