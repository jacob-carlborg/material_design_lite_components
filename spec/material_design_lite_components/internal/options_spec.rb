# frozen_string_literal: true

RSpec.describe MaterialDesignLiteComponents::Internal::Options do
  subject do
    Class.new { include MaterialDesignLiteComponents::Internal::Options }.new
  end

  describe "to_options" do
    subject { super().to_options(options) }

    let(:options) { nil }

    context "when the given options is nil" do
      let(:options) { nil }

      it { is_expected.to eq({}) }
    end

    context "when the given options contain keys as strings" do
      let(:options) { { "foo" => 3 } }

      it "converts the strings to symbols" do
        expect(subject).to eq(foo: 3)
      end
    end
  end

  describe "append_class" do
    let(:options) { {} }
    let(:classes) { [] }

    def append_class
      subject.append_class(options, *classes)
    end

    context "when the options already contain :class" do
      let(:options) { { class: [] } }

      context "when the given class is already present" do
        let(:new_class) { "foobar" }
        let(:classes) { [new_class] }
        let(:options) { { class: classes.join(" ") } }

        it "does not duplicate the class" do
          expect(append_class).to eq(options)
        end
      end

      context "when the given class is not present" do
        let(:options) { { class: "foo" } }
        let(:classes) { %w[bar] }

        it "adds the given class" do
          expect(append_class).to eq(class: "foo bar")
        end
      end
    end

    context "when the options does not contain :class" do
      let(:classes) { %w[bar foo] }

      it "adds the given class" do
        expect(append_class).to eq(class: "bar foo")
      end
    end
  end
end
