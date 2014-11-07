module AppointmentsTest
  module Interactions
    module MakeAppointment
      class Form
        include AppointmentsTest::Form
        require 'date'

        actuator '#booking_form_button'
        uri '/admin/appointments/new?id=11456&utm_medium=admin&utm_source=brewerpractice'

        def contact_email=(email)
          fields.contact_email.set email
        end

        def contact_phone=(phone)
          fields.contact_phone.set phone
        end

        def reason_for_visit=(appointment_reason)
          fields.reason_for_visit.set appointment_reason
        end

        def contact_new_patient=(new_patient)
          if new_patient.downcase == 'yes' || new_patient.downcase == 'true'
            fields.contact_new_patient.set new_patient
          else
            fields.contact_existing_patient.set 'true'
          end
        end

        def contact_first_name=(first_name)
          fields.contact_first_name.set first_name
        end

        def contact_last_name=(last_name)
          fields.contact_last_name.set last_name
        end
      
        #def contact_date_of_birth=(date_of_birth)
        #  contact_dob = Date.parse(date_of_birth)
        #  fields.contact_date_of_birth_year.set contact_dob.year
        #  fields.contact_date_of_birth_month.set contact_dob.mon
        #  fields.contact_date_of_birth_mday.set contact_dob.mday
        #  #fields.contact_date_of_birth.set date_of_birth
        #end

        def contact_date_of_birth_year=(date_of_birth_year)
          fields.contact_date_of_birth_year.select date_of_birth_year
        end

        def contact_date_of_birth_month=(date_of_birth_month)
          fields.contact_date_of_birth_month.select date_of_birth_month
        end

        def contact_date_of_birth_mday=(date_of_birth_mday)
          fields.contact_date_of_birth_mday.select date_of_birth_mday
        end

        def contact_gender=(gender)
          if gender.downcase == 'male'
            fields.contact_gender_male.set 'true'
          elsif
            fields.contact_gender_female.set 'true'
          else
            #TODO: raise an error
          end
        end

        def contact_street_address=(street_address)
          fields.contact_street_address.set street_address
        end

        def contact_city=(city)
          fields.contact_city.set city
        end

        def contact_state=(state)
          fields.contact_state.set state
        end

        def contact_zip_code=(zip_code)
          fields.contact_zip_code.set zip_code
        end

        def contact_guarantor_relationship=(guarantor_relationship)
          fields.contact_guarantor_relationship.select guarantor_relationship
        end

        def contact_guarantor_first_name=(guarantor_first_name)
          fields.contact_guarantor_first_name.set guarantor_first_name
        end

        def contact_guarantor_last_name=(guarantor_last_name)
          fields.contact_guarantor_last_name.set guarantor_last_name
        end

        #def contact_guarantor_date_of_birth=(guarantor_date_of_birth)
        #  guarantor_dob = Date.parse(guarantor_date_of_birth)
        #  fields.contact_guarantor_date_of_birth_year.set guarantor_dob.year
        #  fields.contact_guarantor_date_of_birth_month.set guarantor_dob.mon
        #  fields.contact_guarantor_date_of_birth_mday.set guarantor_dob.mday
        #  #fields.contact_guarantor_date_of_birth.set guarantor_date_of_birth
        #end
        
        def contact_guarantor_date_of_birth_year=(guarantor_date_of_birth_year)
          fields.contact_guarantor_date_of_birth_year.select guarantor_date_of_birth_year
        end

        def contact_guarantor_date_of_birth_month=(guarantor_date_of_birth_month)
          fields.contact_guarantor_date_of_birth_month.select guarantor_date_of_birth_month
        end

        def contact_guarantor_date_of_birth_mday=(guarantor_date_of_birth_mday)
          fields.contact_guarantor_date_of_birth_mday.select guarantor_date_of_birth_mday
        end
        

        def contact_symptoms=(symptoms)
          fields.contact_symptoms.set symptoms
        end
        
        def contact_insurance=(insurance)
          fields.contact_insurance.select insurance
        end

        def contact_insurance_group_number=(insurance_group_number)
          fields.contact_insurance_group_number.set insurance_group_number
        end

        def contact_insurance_subscriber_id=(insurance_subscriber_id)
          fields.contact_insurance_subscriber_id.set insurance_subscriber_id
        end

        def contact_insurance_phone_number=(insurance_phone_number)
          fields.contact_insurance_phone_number.set insurance_phone_number
        end

        def contact_has_secondary_insurance=(has_secondary_insurance)
          if has_secondary_insurance.downcase == 'no'
            fields.contact_has_secondary_insurance_no.set 'true'
          elsif
            fields.contact_has_secondary_insurance_yes.set 'true'
          else
            #TODO: raise an error
          end
        end

         def contact_email_confirmation=(email)
          fields.contact_email_confirmation.set email
        end


        class Fields
          include AppointmentsTest::Fields

          def contact_email
            client.find('#appointment_contact_email')
          end

          def contact_phone
            client.find('#appointment_contact_phone')
          end

          def reason_for_visit
            client.find('#appointment_reason_for_visit_id')
          end

          def contact_new_patient
            client.find('#appointment_new_patient_true')
          end

          def contact_existing_patient
            client.find('#appointment_new_patient_false')
          end
          
          def contact_first_name
            client.find('#appointment_patient_first_name')
          end

          def contact_last_name
            client.find('#appointment_patient_last_name')
          end

          def contact_date_of_birth_year
            client.find('#appointment_patient_dob_1i')
          end

          def contact_date_of_birth_month  
            client.find('#appointment_patient_dob_2i')
          end

          def contact_date_of_birth_mday
            client.find('#appointment_patient_dob_3i')
          end

          def contact_gender_male
            client.find('#appointment_patient_gender_male')
          end

          def contact_gender_female
            client.find('#appointment_patient_gender_female')
          end

          def contact_street_address
            client.find('#appointment_patient_address')
          end

          def contact_city
            client.find('#appointment_patient_city')
          end

          def contact_state
            client.find('#appointment_patient_state')
          end

          def contact_zip_code
            client.find('#appointment_patient_zip')
          end

          def contact_guarantor_relationship
            client.find('#appointment_relationship')
          end

          def contact_guarantor_first_name
            client.find('#appointment_patient_guarantor_first_name')
          end

          def contact_guarantor_last_name
            client.find('#appointment_patient_guarantor_last_name')
          end

          def contact_guarantor_date_of_birth_year
            client.find('#appointment_patient_guarantor_dob_1i')
          end

          def contact_guarantor_date_of_birth_month  
            client.find('#appointment_patient_guarantor_dob_2i')
          end

          def contact_guarantor_date_of_birth_mday
            client.find('#appointment_patient_guarantor_dob_3i')
          end

          def contact_symptoms
            client.find('#appointment_patient_symptoms')
          end

          def contact_insurance
            client.find('#appointment_patient_insurance')
          end

          def contact_insurance_group_number
            client.find('#appointment_patient_group_number')
          end
          
          def contact_insurance_subscriber_id
            client.find('#appointment_patient_subscriber_id')
          end

          def contact_insurance_phone_number
            client.find('#appointment_patient_insurance_phone_number')
          end

          def contact_has_secondary_insurance_yes
            client.find('#has_secondary_insurance_yes')
          end

          def contact_has_secondary_insurance_no
            client.find('#has_secondary_insurance_no')
          end

          def contact_email_confirmation
            client.find('#appointment_email_confirmation')
          end
        end
      end

      class Evidence
        include AppointmentsTest::Evidence

        # This will change once a model for the 'flash' notification messages is in-place
        def made_appointment?
          #debugging
          save_screenshot
          client.has_text?('Setting up appointment is completed!')
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
