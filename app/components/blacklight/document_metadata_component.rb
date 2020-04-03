# frozen_string_literal: true

module Blacklight
  class DocumentMetadataComponent < ::ViewComponent::Base
    with_collection_parameter :fields

    def initialize(fields:, show: false)
      @fields = fields
      @show = show
    end

    def render?
      @fields.any?
    end
  end
end
