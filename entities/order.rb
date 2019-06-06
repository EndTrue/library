# frozen_string_literal: true

class Order
  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date: Date.today)
    Validator.validate_class object: book, expected_class: Book
    Validator.validate_class object: reader, expected_class: Reader
    Validator.validate_class object: date, expected_class: Date
    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "#{@date} - #{@book} - #{@reader}"
  end
end
