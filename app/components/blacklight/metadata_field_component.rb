# frozen_string_literal: true

module Blacklight
  class MetadataFieldComponent < ::ViewComponent::Base
    def initialize(metadata_field:, layout: nil, show: false)
      @metadata_field = metadata_field
      @layout = layout || Blacklight::MetadataFieldLayoutComponent
      @show = show
    end

    # @private
    def render_field_label
      Deprecation.silence(Blacklight::BlacklightHelperBehavior) do
        if @show
          @view_context.render_document_show_field_label @metadata_field.document, label: @metadata_field.label, field: @metadata_field.key
        else
          @view_context.render_index_field_label @metadata_field.document, label: @metadata_field.label, field: @metadata_field.key
        end
      end
    end

    def render?
      @metadata_field.render_field?
    end
  end
end
