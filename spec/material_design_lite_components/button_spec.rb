# frozen_string_literal: true

RSpec.describe MaterialDesignLiteComponents::Button, type: :component do
  let(:name) { "foo" }
  let(:url) { "https://example.com" }

  let(:default_classes) { %w[mdl-button mdl-js-button] }
  let(:classes) { default_classes }
  let(:expected_classes) { classes.join(" ") }
  let(:button) { %(<a class="#{expected_classes}" href="#{url}">#{name}</a>) }

  it "renders a Material Design Lite button" do
    render_inline(described_class.new(name, url))

    expect(rendered_component).to eq(button)
  end

  context "with styles" do
    def render(style)
      render_inline(described_class.new(name, url, style: style))
    end

    context "when no style is given" do
      let(:classes) { default_classes }

      it "renders a flat button" do
        render_inline(described_class.new(name, url))

        expect(rendered_component).to eq(button)
      end
    end

    context "when the style is flat" do
      it "renders a flat button" do
        render(:flat)

        expect(rendered_component).to eq(button)
      end
    end

    context "when the style is raised" do
      let(:classes) { default_classes << "mdl-button--raised" }

      it "renders a raised button" do
        render(:raised)

        expect(rendered_component).to eq(button)
      end
    end

    context "when the style is fab" do
      let(:classes) { default_classes << "mdl-button--fab" }

      it "renders a raised button" do
        render(:fab)

        expect(rendered_component).to eq(button)
      end
    end

    context "when the style is mini_fab" do
      let(:classes) { default_classes << "mdl-button--mini-fab" }

      it "renders a raised button" do
        render(:mini_fab)

        expect(rendered_component).to eq(button)
      end
    end

    context "when the style is icon" do
      let(:classes) { default_classes << "mdl-button--icon" }

      it "renders a raised button" do
        render(:icon)

        expect(rendered_component).to eq(button)
      end
    end
  end

  context "with colors" do
    def render(color)
      render_inline(described_class.new(name, url, color: color))
    end

    context "when no color is given" do
      let(:classes) { default_classes }

      it "renders a button without color" do
        render_inline(described_class.new(name, url))

        expect(rendered_component).to eq(button)
      end
    end

    context "when color is false" do
      let(:classes) { default_classes }

      it "renders a button without color" do
        render(false)

        expect(rendered_component).to eq(button)
      end
    end

    context "when color is true" do
      let(:classes) { default_classes << "mdl-button--colored" }

      it "renders a button with color" do
        render(true)

        expect(rendered_component).to eq(button)
      end
    end

    context "when color is primary" do
      let(:classes) { default_classes << "mdl-button--primary" }

      it "renders a button with primary color" do
        render(:primary)

        expect(rendered_component).to eq(button)
      end
    end

    context "when color is accent" do
      let(:classes) { default_classes << "mdl-button--accent" }

      it "renders a button with accent color" do
        render(:accent)

        expect(rendered_component).to eq(button)
      end
    end
  end

  context "with effects" do
    def render(effect)
      render_inline(described_class.new(name, url, effect: effect))
    end

    context "when no effect is given" do
      let(:classes) { default_classes }

      it "renders a button without effect" do
        render_inline(described_class.new(name, url))

        expect(rendered_component).to eq(button)
      end
    end

    context "when effect is false" do
      let(:classes) { default_classes }

      it "renders a button without effect" do
        render(false)

        expect(rendered_component).to eq(button)
      end
    end

    context "when effect is ripple" do
      let(:classes) { default_classes << "mdl-js-ripple-effect" }

      it "renders a button with ripple click effect" do
        render(:ripple)

        expect(rendered_component).to eq(button)
      end
    end
  end
end
