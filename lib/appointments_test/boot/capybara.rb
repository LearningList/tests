module TestAbstractions
  module Boot
    module Capybara
      extend self

      def !
        ::Capybara.run_server = false
      end
    end
  end
end

TestAbstractions::Boot::Capybara.!
