# frozen_string_literal: true

module ActiveModel
  module Validations
    class CnpjValidator < EachValidator
      def validate_each(record, attribute, value)
        return if value.blank? || CNPJ.valid?(value)

        record.errors[attribute] << (options[:message] || :invalid)
      end
    end
  end
end
