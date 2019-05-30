class Library
    def initialize(authors: [], books: [], readers: [], orders: [])
        @authors = authors
        @books = books
        @readers = readers
        @orders = orders
        # data_load

        new_author = Author.new(name: "heming", biography: "biography")
        new_reader = Reader.new(name: "Oleg", email: "email", city:"city", street:"street", house: 222)
        new_book = Book.new(title: "Bla bla book", author: new_reader)
    end

    def data_save
        data = {
            authors:    @authors,
            books:      @books,
            readers:    @readers,
            orders:     @orders
        }
        File.open("database.yml", "w") { |file| file.write(data.to_yaml)}
    end

    def data_load
        data = YAML.load(File.read("database.yml"))
        @authors    << data[:authors]
        @books      << data[:books]
        @readers    << data[:readers]
        @orders     << data[:orders]
    end
end