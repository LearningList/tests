module TestAbstractions
  module Interactions
    module Login      
      class Form
        include TestAbstractions::Form

        uri '/admin/login'
        actuator '#practice_user_session_submit'

        def username=(username)
          fields.username.set username
        end

        def password=(password)
          fields.password.set password
        end

        class Fields
          include TestAbstractions::Fields

          def username
            client.find('#practice_user_session_login')
          end

          def password
            client.find('#practice_user_session_password')
          end
        end
      end

      class Evidence
        include TestAbstractions::Evidence

        def logged_in?
          client.has_content?('Successfully logged in')
        end        
      end
    end
  end
end
