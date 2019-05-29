class Order
    attr_reader :book, :reader, :date

    def initialize(book:, reader:, date: Date.today)
        @book = book
        @reader = reader
        @date = date
    end
end