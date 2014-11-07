module AppointmentsTest
  def configure(&block)
    configuration = Configuration.instance
    block.call configuration
  end
  module_function :configure

  class Configuration
    attr_accessor :base_uri

    def self.instance
      @instance ||= new
    end
  end
end
