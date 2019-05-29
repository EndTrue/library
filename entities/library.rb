class Library
    def initialize
        @authors = data_load[:authors]
        @books = data_load[:books]
        @readers = data_load[:readers]
        @orders = data_load[:orders]
        puts data_load[:authors]
        
        anton = Author.new(name: "Antony", biography: "Antony's test bio")
        @authors << anton
        oldman = Book.new(title: "Old man and sea", author: anton)
        @books << oldman
        chita = Reader.new(name: "Lesha", email: "grisch@asd.ru", city: "Dnipro", street:"Malinovskogo", house: 777)
        @readers << chita
        ordernew = Order.new(book: oldman, reader: chita, date: Date.today)
        @orders ||== []
        @orders << ordernew
        puts "========"
        puts @authors
        data_save
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
    end
end