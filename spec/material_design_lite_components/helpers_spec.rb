# frozen_string_literal: true

RSpec.describe MaterialDesignLiteComponents::Helpers do
  subject { Class.new { include MaterialDesignLiteComponents::Helpers }.new }

  let(:mdl) { MaterialDesignLiteComponents }

  before do
    without_partial_double_verification do
      # rubocop:disable RSpec/SubjectStub
      allow(subject).to receive(:render)
      # rubocop:enable RSpec/SubjectStub
    end
  end

  def expect_render_with(object)
    without_partial_double_verification do
      # rubocop:disable RSpec/SubjectStub
      expect(subject).to have_received(:render).with(object)
      # rubocop:enable RSpec/SubjectStub
    end
  end

  describe "mdl_button_to" do
    let(:button) { instance_double(mdl::Button) }
    let(:args) { ["foo", "https://example.com", {}] }
    let(:kwargs) { { style: :raised, color: :accent, effect: :ripple } }

    before do
      allow(mdl::Button).to receive(:new).and_return(button)
    end

    it "renders a Material Design Lite button", aggregate_failures: true do
      subject.mdl_button_to(*args, **kwargs)

      expect(mdl::Button).to have_received(:new).with(*args, **kwargs)
      expect_render_with(button)
    end
  end
end
