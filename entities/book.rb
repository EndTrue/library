class Book
    attr_reader :title, :author

    def initialize(title:, author:)
        Validator::validate object: author, expected_class: Author
        @title = title
        @author = author
    end
end