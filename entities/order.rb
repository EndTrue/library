# frozen_string_literal: true

class Order
  attr_reader :book, :reader, :date

  def initialize(book:, reader:, date: Date.today)
    @book = book
    @reader = reader
    @date = date
  end

  def to_s
    "#{@date} - #{@book} - #{@reader}"
  end
end
