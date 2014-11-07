module AppointmentsTest
  module ExampleData
    module Scenarios
      class MakeAppointment
        include DataObject
        
        attribute :contact_email
        attribute :contact_first_name
        attribute :contact_last_name
        attribute :contact_phone
        attribute :reason_for_visit
        attribute :contact_new_patient
        attribute :contact_date_of_birth_year
        attribute :contact_date_of_birth_month
        attribute :contact_date_of_birth_mday
        attribute :contact_gender
        attribute :contact_street_address
        attribute :contact_city
        attribute :contact_state
        attribute :contact_zip_code
        attribute :contact_guarantor_relationship
        attribute :contact_guarantor_first_name
        attribute :contact_guarantor_last_name
        attribute :contact_guarantor_date_of_birth_year
        attribute :contact_guarantor_date_of_birth_month
        attribute :contact_guarantor_date_of_birth_mday
        attribute :contact_symptoms
        attribute :contact_insurance
        attribute :contact_insurance_group_number
        attribute :contact_insurance_subscriber_id
        attribute :contact_insurance_phone_number
        attribute :contact_has_secondary_insurance
        attribute :contact_email_confirmation

        def self.example
          new_patient
        end

        def self.new_patient
          make_appointment = new
          contact_dob = Date.new(1999, 1, 10)
          guarantor_dob = Date.new(1970, 4, 27)
          make_appointment.contact_email = 'some_email_address@some_domain.com'
          make_appointment.contact_first_name = 'Somefirstname'
          make_appointment.contact_last_name = 'Somelastname'
          make_appointment.contact_phone = '512-236-1234'
          make_appointment.reason_for_visit = 'Swine Flu Shot'
          make_appointment.contact_new_patient = 'yes'
          make_appointment.contact_date_of_birth_year = contact_dob.year
          make_appointment.contact_date_of_birth_month = Date::MONTHNAMES[contact_dob.mon]
          make_appointment.contact_date_of_birth_mday = contact_dob.mday
          make_appointment.contact_gender = 'Male'
          make_appointment.contact_street_address = 'some_street_address'
          make_appointment.contact_city = 'some_city'
          make_appointment.contact_state = 'TX'
          make_appointment.contact_zip_code = '78750'
          make_appointment.contact_guarantor_relationship = 'parent'
          make_appointment.contact_guarantor_first_name = 'Somefirstname'
          make_appointment.contact_guarantor_last_name = 'Somelastname'
          make_appointment.contact_guarantor_date_of_birth_year = guarantor_dob.year
          make_appointment.contact_guarantor_date_of_birth_month = Date::MONTHNAMES[guarantor_dob.mon]
          make_appointment.contact_guarantor_date_of_birth_mday = guarantor_dob.mday
          make_appointment.contact_symptoms = 'some symptoms'
          make_appointment.contact_insurance = 'CCN - Managed Care'
          make_appointment.contact_insurance_group_number = 'some_group_number'
          make_appointment.contact_insurance_subscriber_id = 'some_subscriber_id'
          make_appointment.contact_insurance_phone_number = '800-231-9999'
          make_appointment.contact_has_secondary_insurance = 'no'
          make_appointment.contact_email_confirmation = 'some_email_address@some_domain.com'
          make_appointment
        end

        def self.new_patient2
          make_appointment = new
          contact_dob = Date.new(2001, 1, 10)
          guarantor_dob = Date.new(1980, 4, 27)
          make_appointment.contact_email = 'some_email_address2@some_domain.com'
          make_appointment.contact_first_name = 'Somefirstname'
          make_appointment.contact_last_name = 'Somelastname'
          make_appointment.contact_phone = '512-236-1234'
          make_appointment.reason_for_visit = 'Swine Flu Shot'
          make_appointment.contact_new_patient = 'yes'
          make_appointment.contact_date_of_birth_year = contact_dob.year
          make_appointment.contact_date_of_birth_month = Date::MONTHNAMES[contact_dob.mon]
          make_appointment.contact_date_of_birth_mday = contact_dob.mday
          make_appointment.contact_gender = 'Male'
          make_appointment.contact_street_address = 'some_street_address'
          make_appointment.contact_city = 'some_city'
          make_appointment.contact_state = 'TX'
          make_appointment.contact_zip_code = '78750'
          make_appointment.contact_guarantor_relationship = 'parent'
          make_appointment.contact_guarantor_first_name = 'Somefirstname'
          make_appointment.contact_guarantor_last_name = 'Somelastname'
          make_appointment.contact_guarantor_date_of_birth_year = guarantor_dob.year
          make_appointment.contact_guarantor_date_of_birth_month = Date::MONTHNAMES[guarantor_dob.mon]
          make_appointment.contact_guarantor_date_of_birth_mday = guarantor_dob.mday
          make_appointment.contact_symptoms = 'some symptoms'
          make_appointment.contact_insurance = 'CCN - Managed Care'
          make_appointment.contact_insurance_group_number = 'some_group_number'
          make_appointment.contact_insurance_subscriber_id = 'some_subscriber_id'
          make_appointment.contact_insurance_phone_number = '800-231-9999'
          make_appointment.contact_has_secondary_insurance = 'no'
          make_appointment.contact_email_confirmation = 'some_email_address2@some_domain.com'
          make_appointment
        end
      end
    end
  end
end
