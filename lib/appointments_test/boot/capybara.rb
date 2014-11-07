module AppointmentsTest
  module Boot
    module Capybara
      extend self

      def !
        ::Capybara.run_server = false
      end
    end
  end
end

AppointmentsTest::Boot::Capybara.!
