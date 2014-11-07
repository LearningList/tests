module TestAbstractions
  module ExampleData
    module Scenarios
      class AddPracticeProvider
        include DataObject
        
        attribute :provider_doctor_type
        attribute :provider_prefix
        attribute :provider_first_name
        attribute :provider_last_name
        attribute :provider_suffix
        attribute :provider_practice_location
        attribute :provider_user_name
        attribute :provider_password
        attribute :provider_password_confirmation

        def self.example
          new_provider
        end

        def self.new_provider
          add_practice_provider = new
          add_practice_provider.provider_doctor_type = 'Family Medicine'
          add_practice_provider.provider_prefix = 'somedoctorprefix'
          add_practice_provider.provider_first_name = 'Somedoctorfirstname'
          add_practice_provider.provider_last_name = 'Somedoctorlastname'
          add_practice_provider.provider_suffix = 'somedoctorsuffix'
          add_practice_provider.provider_practice_location = 'Brewer Practice'
          add_practice_provider.provider_user_name = 'somedoctorusername'
          add_practice_provider.provider_password = 'somedoctorpassword1!'
          add_practice_provider.provider_password_confirmation = 'somedoctorpassword1!'
          add_practice_provider
        end

        def self.new_provider2
          add_practice_provider = new
          add_practice_provider.provider_doctor_type = 'Family Medicine'
          add_practice_provider.provider_prefix = 'someprefix'
          add_practice_provider.provider_first_name = 'Somefirstname_dryrun2'
          add_practice_provider.provider_last_name = 'Somelastname_dryrun2'
          add_practice_provider.provider_suffix = 'somesuffix'
          add_practice_provider.provider_practice_location = 'Brewer Practice'
          add_practice_provider.provider_user_name = 'someusername_dryrun'
          add_practice_provider.provider_password = 'somepassword_dryrun2!'
          add_practice_provider.provider_password_confirmation = 'somepassword_dryrun2!'
          add_practice_provider
        end
      end
    end
  end
end