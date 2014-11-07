module AppointmentsTest
  module Interactions
    module Login      
      class Form
        include AppointmentsTest::Form

        uri '/admin/login'
        actuator '#practice_user_session_submit'

        def username=(username)
          fields.username.set username
        end

        def password=(password)
          fields.password.set password
        end

        class Fields
          include AppointmentsTest::Fields

          def username
            client.find('#practice_user_session_login')
          end

          def password
            client.find('#practice_user_session_password')
          end
        end
      end

      class Evidence
        include AppointmentsTest::Evidence

        def logged_in?
          client.has_content?('Successfully logged in')
        end        
      end
    end
  end
end
