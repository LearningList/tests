module AppointmentsTest
  module Fields
    def self.included(base)
      base.send :include, Client::Accessor
      base.extend ClassMethods
    end

    module ClassMethods
      def build(client=nil)
        client ||= Client.instance
        instance = new
        instance.client = client
        instance
      end
    end
  end
end

