# frozen_string_literal: true

class Book
  attr_reader :title, :author

  def initialize(title:, author:)
    Validator.validate_class object: author, expected_class: Author
    Validator.validate_is_string argument: title
    @title = title
    @author = author
  end

  def to_s
    "#{@title} - #{@author}"
  end
end
