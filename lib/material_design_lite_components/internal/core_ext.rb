# frozen_string_literal: true

module MaterialDesignLiteComponents::Internal
  # Extensions to Ruby core classes.
  module CoreExt
    refine Object do
      def or(default = nil, &block)
        self || default || block&.call or
          raise ArgumentError, "Either a default value or a block must be given"
      end
    end
  end
end
