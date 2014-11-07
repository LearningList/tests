module AppointmentsTest
  module Interactions
    module AddPracticeProvider
      class Form
        include AppointmentsTest::Form

        actuator '#doctor_submit'
        uri '/admin/doctors/new'

        def provider_doctor_type=(doctor_type)
          fields.provider_doctor_type.select doctor_type
        end

        def provider_prefix=(doctor_prefix)
          fields.provider_prefix.set doctor_prefix
        end        

        def provider_first_name=(doctor_first_name)
          fields.provider_first_name.set doctor_first_name
        end

        def provider_last_name=(doctor_last_name)
          fields.provider_last_name.set doctor_last_name
        end

        def provider_suffix=(doctor_suffix)
          fields.provider_suffix.set doctor_suffix
        end

        def provider_practice_location=(practice_location)
          fields.provider_practice_location.select practice_location
        end

        def provider_user_name=(user_name)
          fields.provider_user_name.set user_name
        end

        def provider_password=(password)
          fields.provider_password.set password
        end

        def provider_password_confirmation=(password_confirmation)
          fields.provider_password_confirmation.set password_confirmation
        end

        class Fields
          include AppointmentsTest::Fields

          def provider_doctor_type
            client.find('#doctor_doctor_type_id')
          end

          def provider_prefix
            client.find('#doctor_prefix')
          end

          def provider_first_name
            client.find('#doctor_first_name')
          end

          def provider_last_name
            client.find('#doctor_last_name')
          end

          def provider_suffix
            client.find('#doctor_suffix')
          end

          def provider_practice_location
            client.find('#doctor_default_practice_location_id')
          end

          def provider_user_name
            client.find('#doctor_practice_user_attributes_login')
          end

          def provider_password
            client.find('#doctor_practice_user_attributes_password')
          end

          def provider_password_confirmation
            client.find('#doctor_practice_user_attributes_password_confirmation')
          end
        end
      end
     
      class Evidence
        include AppointmentsTest::Evidence
         
        def added_provider?
          #debugging
          save_screenshot
          client.has_text?('Reason for Visits has not been setup.')
        end

        #temporary code for debugging until Scott finish foundation 
        def save_screenshot
          time = Time.now.strftime "%FT%T.%L%:z"
          client.save_screenshot("capy-test-#{time}.png", :full => 'true')
        end
      end
    end
  end
end
