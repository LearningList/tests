module SignUpTest
  module ExampleData
    class SignUp
      include TestAbstractions::DataObject
      
      attribute :name
      attribute :email_address

      def self.example
        sign_up = new
        sign_up.name = 'Some Name'
        sign_up.password = 'some_address@email.com'
        sign_up
      end
    end
  end
end
