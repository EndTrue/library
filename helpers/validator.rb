# frozen_string_literal: true

module Validator
  def self.validate_class(object:, expected_class:)
    raise WrongClassError unless object.instance_of? expected_class
  end

  def self.validate_is_string(argument:)
    raise EmptyStringError unless argument.present?
  end

  def self.validate_is_positive(argument:)
    raise ArgumenNotPositiveNumber unless argument >= 0
  end
end
