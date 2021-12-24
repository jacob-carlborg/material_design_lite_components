# frozen_string_literal: true

module MaterialDesignLiteComponents
  # Helper wrappers for all Material Design Lite view components.
  module Helpers
    # rubocop:disable Metrics/ParameterLists

    # Renders a [Material Design Lite button](https://getmdl.io/components/index.html#buttons-section).
    #
    # This behaves as [link_to][link_to], but with styles added to make it a
    # Material Design Lite button. The following CSS classes are always added:
    # `mdl-button` and `mdl-js-button`.
    #
    # @example Basic Usage
    #   <%= mdl_button_to "example", "example.com" %>
    #
    # @example Block
    #   <%= mdl_button_to "example.com" do %>
    #     <b>example</b>
    #   <% end %>
    #
    # @example Styles
    #   <%= mdl_button_to "example", "example.com", style: :flat %>
    #   <%= mdl_button_to "example", "example.com", style: :raised %>
    #   <%= mdl_button_to "example", "example.com", style: :fab %>
    #   <%= mdl_button_to "example", "example.com", style: :mini_fab %>
    #   <%= mdl_button_to "example", "example.com", style: :icon %>
    #
    # @example Colors
    #   <%= mdl_button_to "example", "example.com", color: false %>
    #   <%= mdl_button_to "example", "example.com", color: true %>
    #   <%= mdl_button_to "example", "example.com", color: :primary %>
    #   <%= mdl_button_to "example", "example.com", color: :accent %>
    #
    # @example Effects
    #   <%= mdl_button_to "example", "example.com", effect: false %>
    #   <%= mdl_button_to "example", "example.com", effect: :ripple %>
    #
    # @param [String] name The text of the button
    # @param [Hash] options See [link_to](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)
    # @param [Hash] html_options See [link_to](https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to)
    #
    # @param [Symbol] style The style of the button. Available styles are:
    #   * `:flat` - Applies flat display effect to the button. No additional
    #     CSS classes added.
    #
    #   * `:raised` - Applies raised display effect to the button. Adds the
    #     `mdl-button--raised` CSS class.
    #
    #   * `:fab` - Applies fab (circular) display effect to the button. Adds the
    #     `mdl-button--fab` CSS class.
    #
    #   * `:mini_fab` - Applies mini-fab (small fab circular) display effect to
    #     the button. Adds the `mdl-button--mini-fab` CSS class.
    #
    #   * `:icon` - Applies icon (small plain circular) display effect to the
    #     button. Addß the `mdl-button--icon` CSS class.
    #
    # @param [Symbol, Boolean] color The color of the button. Available colors
    #   are:
    #   * `false` - No color is applied. No additional CSS classes added.
    #
    #   * `true` - Applies colored display effect. Adds the
    #     `mdl-button--colored` CSS class.
    #
    #   * `:primary` - Applies primary color display effect. Adds the
    #     `mdl-button--primary` CSS class.
    #
    #   * `:accent` - Applies accent color display effect. Adds the
    #     `mdl-button--accent` CSS class.
    #
    # @param [Symbol, false] effect The click effect of the button. Available
    #   effects are:
    #   * `false` - No effect is applied. No additional CSS classes added.
    #
    #   * `:ripple` - Applies ripple click effect. Adds the
    #     `mdl-js-ripple-effect` CSS class.
    #
    # @see https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to link_to
    # @see https://getmdl.io/components/index.html#buttons-section Material
    #   Design Lite Button
    #
    # [link_to]: https://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-link_to
    def mdl_button_to(
      name = nil,
      options = nil,
      html_options = nil,
      style: :flat,
      color: false,
      effect: false,
      &block
    )
      # rubocop:enable Metrics/ParameterLists
      render Button.new(
        name,
        options,
        html_options,
        style: style,
        color: color,
        effect: effect,
        &block
      )
    end
  end
end
