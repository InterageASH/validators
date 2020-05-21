# frozen_string_literal: true

module ActiveModel
  module Validations
    class CpfValidator < EachValidator
      def validate_each(record, attribute, value)
        return if value.blank? || CPF.valid?(value)

        record.errors[attribute] << (options[:message] || :invalid)
      end
    end
  end
end
