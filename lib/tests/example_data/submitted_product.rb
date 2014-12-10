module Tests
  module ExampleData
    class SubmittedProduct
      include TestAbstractions::DataObject
      
      attribute :title
      attribute :publisher
      attribute :image
      attribute :publisher_name
      attribute :state, default: 'new'
      attribute :publisher_comment
      attribute :description
      attribute :author
      attribute :isbn
      attribute :copyright_year, type: Integer
      attribute :edition
      attribute :online_course_completion_rate, type: Float
      attribute :language
      attribute :grade
      attribute :kind, default: 'online_instructional_material'
      attribute :oer, type: Boolean
      attribute :unit_price, type: String
      attribute :unit_of_measure
      attribute :subscription_based, type: Boolean
      attribute :special_populations, type: Array
      attribute :description
      attribute :required_technology
      attribute :small_standards_subset, type: Boolean, default: false
      attribute :supplemental_replacement_text
      attribute :subject
      attribute :states_adopted, type: Array
      attribute :state_verified_correlations
      attribute :publisher_correlations
      attribute :alignment_percentage, type: Integer
      attribute :purchasing_url
      attribute :staff_development_costs_included, type: Boolean
      attribute :questionnaire
      attribute :file

      def self.example
        product = new
        product.title= 'Product 505'
        product.publisher = "Rock 'N Learn (michelle@rocknlearn.com)"
        product.title =
        product.publisher =
        product.image =
        product.description =
        product.author =
        product.isbn =
        product.copyright_year =
        product.edition =
        product.online_course_completion_rate =
        product.language =
        product.grade =
        product.kind =
        product.oer =
        product.unit_price =
        product.unit_of_measure =
        product.subscription_based =
        product.special_populations =
        product.description =
        product.required_technology =
        product.small_standards_subset =
        product.supplemental_replacement_text =
        product.subject = 
        product.states_adopted =
        product.state_verified_correlations =
        product.publisher_correlations =
        product.alignment_percentage =
        product.purchasing_url =
        product.staff_development_costs_included =
        product.questionnaire =
        product.file =
        product
      end

    end
  end
end
