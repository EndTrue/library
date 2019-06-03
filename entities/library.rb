# frozen_string_literal: true

class Library
  include FakeDataGenerator
  include Statistic

  attr_reader :authors, :books, :readers, :orders

  def initialize
    @authors = Array.new
    @books = Array.new
    @readers = Array.new
    @orders = Array.new
  end

  def data_save
    data = {
      authors: @authors,
      books: @books,
      readers: @readers,
      orders: @orders
    }
    File.open('database.yml', 'w') { |file| file.write(data.to_yaml) }
  end

  def data_load
    data = YAML.safe_load(File.read('database.yml'))
    @authors    << data[:authors]
    @books      << data[:books]
    @readers    << data[:readers]
    @orders     << data[:orders]
  end
end
