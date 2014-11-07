module AppointmentsTest
  class Client
    attr_accessor :base_uri
    attr_accessor :driver

    def initialize(base_uri, driver)
      @base_uri = base_uri
      @driver = driver
    end

    def self.instance
      @instance ||= build
    end

    def self.build(base_uri: nil, driver: nil)
      base_uri ||= Context.instance.base_uri
      cls = client_class
      driver ||= cls.driver
      instance = cls.new base_uri, driver
      instance
    end

    def self.client_class
      only_poltergeist_for_now__selenium_would_also_be_useful
    end

    def self.only_poltergeist_for_now__selenium_would_also_be_useful
      Poltergeist
    end

    def method_missing(meth, *args, &block)
      delegate_to_driver(meth, *args, &block)        
    end

    def delegate_to_driver(meth, *args, &block)
      driver.send meth, *args, &block
    end

    class Poltergeist < Client
      extend ::Capybara::DSL

      def self.driver
        Capybara::Session.new :poltergeist
      end

      def open(uri)
        uri = absolute_uri(uri)
        driver.visit(uri)
      end

      def absolute_uri(uri)
        base = URI(base_uri)
        u = URI(uri)
        (base + u).to_s
      end

      def enter(content, selector)
        driver.fill_in(selector, :with => content)
      end

      def select(option, selector)
        driver.select(option, :from => selector)
      end

      def click(selector)
        click_on(selector)
      end
    end

    module Accessor
      attr_writer :client

      def client
        @client ||= Client.instance
      end
    end
  end
end
