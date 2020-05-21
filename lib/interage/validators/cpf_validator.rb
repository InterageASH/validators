# frozen_string_literal: true

require 'cpf'

class CpfValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank?
    return if CPF.valid?(value)

    record.errors.add(attribute, (options[:message] || :invalid))
  end
end
