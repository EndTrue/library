# frozen_string_literal: true

module Validator
  def self.validate_class(object:, expected_class:)
    raise WrongClassError unless object.instance_of? expected_class
  end

  def self.validate_is_not_empty_string(argument:)
    raise EmptyStringError unless argument.to_s.present?
  end

  def self.validate_is_positive(argument:)
    raise NotPositiveNumberError unless argument >= 0
  end
end
