# frozen_string_literal: true

module MaterialDesignLiteComponents
  # Renders a Material Design Lite button.
  class Button < ViewComponent::Base
    include ::ActiveModel::Validations
    include Internal::Options

    STYLES = {
      flat: "",
      raised: "mdl-button--raised",
      fab: "mdl-button--fab",
      mini_fab: "mdl-button--mini-fab",
      icon: "mdl-button--icon"
    }.freeze

    private_constant :STYLES

    COLORS = {
      false => "",
      true => "mdl-button--colored",
      primary: "mdl-button--primary",
      accent: "mdl-button--accent"
    }.freeze

    private_constant :COLORS

    EFFECTS = {
      false => "",
      ripple: "mdl-js-ripple-effect"
    }.freeze

    private_constant :EFFECTS

    validates :style, inclusion: STYLES.keys
    validates :color, inclusion: COLORS.keys
    validates :effect, inclusion: EFFECTS.keys

    # rubocop:disable Metrics/ParameterLists

    # {include:MaterialDesignLiteComponents::Helpers#mdl_button_to}
    #
    # @example Basic Usage
    #   <% Mdl = MaterialDesignLiteComponents %>
    #   <%= render Mdl::Button.new("example", "example.com") %>
    #
    # @example Block
    #   <%= render Mdl::Button.new("example.com" do) %>
    #     <b>example</b>
    #   <% end %>
    #
    # @example Styles
    #   <%= render Mdl::Button.new("example", "example.com", style: :flat) %>
    #   <%= render Mdl::Button.new("example", "example.com", style: :raised) %>
    #   <%= render Mdl::Button.new("example", "example.com", style: :fab) %>
    #   <%= render Mdl::Button.new("example", "example.com", style: :mini_fab) %>
    #   <%= render Mdl::Button.new("example", "example.com", style: :icon) %>
    #
    # @example Colors
    #   <%= render Mdl::Button.new("example", "example.com", color: false) %>
    #   <%= render Mdl::Button.new("example", "example.com", color: true) %>
    #   <%= render Mdl::Button.new("example", "example.com", color: :primary) %>
    #   <%= render Mdl::Button.new("example", "example.com", color: :accent) %>
    #
    # @example Effects
    #   <%= render Mdl::Button.new("example", "example.com", effect: false) %>
    #   <%= render Mdl::Button.new("example", "example.com", effect: :ripple) %>
    #
    # @param (see MaterialDesignLiteComponents::Helpers#mdl_button_to)
    # @return (see MaterialDesignLiteComponents::Helpers#mdl_button_to)
    # @see (see MaterialDesignLiteComponents::Helpers#mdl_button_to)
    # @see MaterialDesignLiteComponents::Helpers#mdl_button_to
    def initialize(
      name = nil,
      options = nil,
      html_options = nil,
      style: :flat,
      color: false,
      effect: false,
      &block
    )
      # rubocop:enable Metrics/ParameterLists
      @name = name
      @options = options
      @html_options = to_options(html_options)
      @style = style
      @color = color
      @effect = effect
      @block = block
    end

    def before_render
      validate!
    end

    def call
      helpers.link_to(name, options, html_options_with_mdl)
    end

    private

    DEFAULT_CLASSES = Set.new(%w[mdl-button mdl-js-button]).freeze

    private_constant :DEFAULT_CLASSES

    attr_reader :name
    attr_reader :options
    attr_reader :html_options
    attr_reader :style
    attr_reader :color
    attr_reader :effect
    attr_reader :block

    def html_options_with_mdl
      append_class(html_options || {}, *classes)
    end

    def classes
      @classes ||= DEFAULT_CLASSES
        .to_a
        .concat([style_to_class])
        .concat([color_to_class])
        .concat([effect_to_class])
        .filter(&:present?)
    end

    def style_to_class
      STYLES[style]
    end

    def color_to_class
      COLORS[color]
    end

    def effect_to_class
      EFFECTS[effect]
    end
  end
end
