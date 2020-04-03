# frozen_string_literal: true

module Blacklight
  class MetadataFieldLayoutComponent < ::ViewComponent::Base
    with_collection_parameter :metadata_field
    with_content_areas :label, :value

    def initialize(metadata_field:, label_class: 'col-md-3', value_class: 'col-md-9')
      @metadata_field = metadata_field
      @key = @metadata_field.key.parameterize
      @label_class = label_class
      @value_class = value_class
    end
  end
end
