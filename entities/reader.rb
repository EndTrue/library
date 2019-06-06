# frozen_string_literal: true

class Reader
  attr_reader :name, :email, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    Validator.validate_is_string argument: name
    Validator.validate_is_string argument: email
    Validator.validate_is_string argument: city
    Validator.validate_is_string argument: street
    Validator.validate_is_positive argument: house
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  def to_s
    "#{@name}-#{@email}"
  end
end
