module Tests
  module ExampleData
    class Login
      include TestAbstractions::DataObject
      
      attribute :admin_email
      attribute :admin_password

      def self.example
        login = new
        login.admin_email = 'test@example.com'
        login.admin_password = 'password'
        login
      end
    end
  end
end
