# frozen_string_literal: true

RSpec.describe MaterialDesignLiteComponents::Internal::CoreExt do
  using described_class

  describe Object do
    describe "or" do
      context "when the receiver is nil" do
        context 'when the default value is "foo"' do
          subject { nil.or(default_value) }

          let(:default_value) { "foo" }

          it { is_expected.to eq(default_value) }
        end

        context 'when the block returns "foo"' do
          subject { nil.or { block_value } }

          let(:block_value) { "foo" }

          it { is_expected.to eq(block_value) }

          context 'when the default value is "bar"' do
            subject { nil.or(default_value) { block_value } }

            let(:default_value) { "bar" }

            it { is_expected.to eq(default_value) }
          end
        end
      end

      context 'when the receiver is not nil ("foo")' do
        subject { receiver.or("bar") }

        let(:receiver) { "foo" }

        it { is_expected.to eq(receiver) }
      end
    end
  end
end
