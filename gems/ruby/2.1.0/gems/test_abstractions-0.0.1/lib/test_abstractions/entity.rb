module TestAbstractions
  module Entity
    def self.included(descendant)
      descendant.send(:include, Virtus.model)
    end

    def attribute_names
      attributes.keys
    end
  end
end
