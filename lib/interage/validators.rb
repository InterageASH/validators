# frozen_string_literal: true

require 'active_model'
Dir[File.dirname(__FILE__) + '/validators/*.rb'].sort.each { |f| require f }

module Validators
end
