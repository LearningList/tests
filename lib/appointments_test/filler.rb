module TestAbstractions
  class Filler
    # # NOTE: try this with include in setup
    include Initializer

    initializer :data, :form, :mapping

    def self.build(data, form, mapping=nil)
      mapping ||= self.mapping(data, form)
      instance = new data, form, mapping
      instance
    end

    def self.mapping(data, form)
      mapping = {}
      data.attribute_names.each do |attribute_name|
        data_attribute, form_attribute = map attribute_name, form
        mapping[data_attribute] = form_attribute if form_attribute
      end
      mapping
    end

    def self.map(attribute_name, form)
      setter = "#{attribute_name}="
      return nil unless form.respond_to? setter

      return attribute_name, attribute_name
    end

    def !
      mapping.each do |data_attribute, form_attribute|
        copy data_attribute, form_attribute
      end
    end

    def copy(data_attribute, form_attribute)
      value = data.attributes[data_attribute]
      form.send "#{form_attribute}=", value
      return value, data_attribute, form_attribute
    end
  end
end
