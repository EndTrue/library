# frozen_string_literal: true

class Author
  attr_reader :name, :biography

  def initialize(name:, biography:)
    Validator.validate_is_not_empty_string argument: name
    @name = name
    @biography = biography
  end

  def to_s
    @name.to_s
  end
end
