# frozen_string_literal: true

module MaterialDesignLiteComponents
  # Renders a Material Design Lite button.
  class Engine < ::Rails::Engine
    initializer "material_design_lite_components.include_helpers" do
      ActiveSupport.on_load(:action_view) do
        ActionView::Base.include Helpers
      end
    end
  end
end
