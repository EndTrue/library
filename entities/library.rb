# frozen_string_literal: true

class Library
  include FakeDataGenerator
  include Statistic

  attr_reader :authors, :books, :readers, :orders

  DB_PATH = 'database.yml'

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
    data_load
  end

  def data_save
    data = {
      authors: @authors,
      books: @books,
      readers: @readers,
      orders: @orders
    }
    File.open(DB_PATH, 'w') { |file| file.write(data.to_yaml) }
  end

  def data_load
    yaml = File.read(DB_PATH)
    allowable_classes = [Symbol, Author, Book, Reader, Order, Date]
    data = Psych.safe_load(yaml, allowable_classes, [], true)
    @authors.concat data[:authors]
    @books.concat data[:books]
    @readers.concat data[:readers]
    @orders.concat data[:orders]
  end
end
