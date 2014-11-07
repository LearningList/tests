module AppointmentsTest
  module ExampleData
    class User
      include DataObject
      
      attribute :username
      attribute :password

      def self.example
        dave
      end

      def self.dave
        user = new
        user.username = 'dave_brewerpractice'
        user.password = 'davee!5'
        user
      end
    end
  end
end
