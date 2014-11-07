module AppointmentsTest
  module Form
    def self.included(base)
      base.send :include, Client::Accessor
      base.extend ClassMethods
    end

    attr_accessor :evidence
    attr_accessor :fields

    def actuate
      element = client.find actuator
      raise "Element #{actuator} not found" unless element
      actuating! if respond_to? :actuating!
      element.click
      actuated! if respond_to? :actuated!
      evidence
    end
    alias :! :actuate

    def fill(data, filler=nil)
      filler ||= Filler.build data, self
      filler.!
      filler
    end

    def open
      client.open uri
    end

    module ClassMethods
      def build(evidence_class: nil, fields_class: nil, client: nil)
        client ||= Client.instance
        instance = new
        instance.client = client
        instance.fields = fields(fields_class, client)
        instance.evidence = evidence(evidence_class, client)
        instance
      end

      def fields(fields_class, client)
        fields_class ||= self.fields_class

        fields = nil
        fields = fields_class.build client if fields_class
        fields
      end

      def fields_class
        cls = nil
        cls = Object.const_get fields_class_name if fields_class?
        cls
      end

      def fields_class?
        Object.const_defined? fields_class_name
      end

      def fields_class_name
        "#{self.name}::Fields"
      end

      def evidence(evidence_class, client)
        evidence_class ||= self.evidence_class

        evidence = nil
        evidence = evidence_class.build client if evidence_class
        evidence
      end

      def evidence_class
        cls = nil
        cls = Object.const_get evidence_class_name if evidence_class?
        cls
      end

      def evidence_class?
        Object.const_defined? evidence_class_name
      end

      def evidence_class_name
        class_name = self.name
        class_name.gsub! '::Form', '::Evidence'
      end

      def actuator_macro(selector)
        ActuatorMacro.define self, selector
      end
      alias :actuator :actuator_macro

      def uri_macro(uri)
        URIMacro.define self, uri
      end
      alias :uri :uri_macro
    end

    class ActuatorMacro
      include Initializer

      initializer :cls, :selector

      def self.define(cls, selector)
        macro = new cls, selector
        macro.define
        macro
      end

      def define
        getter
        setter
      end

      def getter
        sel = selector
        cls.send :define_method, :actuator do
          sel
        end
      end

      def setter
        cls.send :define_method, :actuator= do |selector|
          instance_variable_set :@actuator, selector
        end
      end
    end

    class URIMacro
      include Initializer

      initializer :cls, :uri

      def self.define(cls, uri)
        macro = new cls, uri
        macro.define
        macro
      end

      def define
        getter
        setter
      end

      def getter
        u = uri
        cls.send :define_method, :uri do
          u
        end
      end

      def setter
        cls.send :define_method, :uri= do |uri|
          instance_variable_set :@uri, uri
        end
      end
    end
  end
end
