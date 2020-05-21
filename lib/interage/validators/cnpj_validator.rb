# frozen_string_literal: true

require 'cnpj'

class CnpjValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?
    return if CNPJ.valid?(value)

    record.errors.add(attribute, (options[:message] || :invalid))
  end
end
