# frozen_string_literal: true

module FakeDataGenerator
  module_function

  attr_reader :generated_authors, :generated_readers, :generated_books, :generated_orders

  def 
    generate_readers
    generate_authors
    generate_books
    generate_orders

    @readers
    @authors
    @books
    @orders
  end

  def generate_readers

    rand(10..20).times do
      @readers << Reader.new(
        name: FFaker::Name.name,
        email: FFaker::Internet.email,
        city: FFaker::AddressUA.city,
        street: FFaker::AddressUA.street_name,
        house: rand(1...250)
      )
    end
  end

  def generate_authors

    rand(10...20).times do
      @authors << Author.new(
        name: FFaker::Book.author,
        biography: ''
      )
    end
  end

  def generate_books

    rand(10...20).times do
      @books << Book.new(
        title: FFaker::Book.title,
        author: @authors.sample
      )
    end
  end

  def generate_orders

    rand(10...20).times do
      @orders << Order.new(
        book: @books.sample,
        reader: @readers.sample
      )
    end
  end
end
