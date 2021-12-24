# frozen_string_literal: true

require "active_model"
require "view_component"
require "zeitwerk"

# :nodoc:
module MaterialDesignLiteComponents
  def self.autoreload?
    defined?(Rails) &&
      Rails.env.development? &&
      ENV.key?("MATERIAL_DESIGN_LITE_COMPONENTS_AUTORELOAD")
  end
end

Zeitwerk::Loader.for_gem.setup unless MaterialDesignLiteComponents.autoreload?
require "material_design_lite_components/engine" if defined?(Rails::Engine)
