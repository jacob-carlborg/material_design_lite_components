# frozen_string_literal: true

module MaterialDesignLiteComponents::Internal
  # Options helper.
  module Options
    using CoreExt

    def to_options(options)
      options.or({}).symbolize_keys
    end

    def append_class(options, *classes)
      options
        .dup
        .delete(:class)
        .or("")
        .split
        .append(*classes)
        .uniq
        .join(" ")
        .then { options.merge(class: _1) }
    end
  end
end
