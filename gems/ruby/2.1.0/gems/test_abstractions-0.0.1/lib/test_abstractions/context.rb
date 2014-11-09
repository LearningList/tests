module TestAbstractions
  class Context
    include Initializer

    initializer :base_uri

    def self.instance
      @instance ||= build
    end

    def self.build(configuration: nil)
      configuration ||= Configuration.instance
      instance = new configuration.base_uri
      instance
    end
  end
end
