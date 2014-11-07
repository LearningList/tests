module AppointmentsTest
  module ExampleData
    module DataObject
      def self.included(descendant)
        descendant.send(:include, Virtus.model)
      end

      def attribute_names
        attributes.keys
      end
    end
  end
end
