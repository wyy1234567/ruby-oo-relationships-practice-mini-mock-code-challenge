class Author 

    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name 
        Author.all << self
    end

    def self.all 
        @@all
    end

    def books 
        Book.all.select do |book_instance|
            book_instance.author == self 
        end
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words 
        books.map do |book_instance|
            book_instance.word_count
        end.sum 
    end

    def self.most_words
        max_word = 0
        most_word_author = nil
        Author.all.each do |author_instance|
            if author_instance.total_words > max_word
                max_word = author_instance.total_words
                most_word_author = author_instance
            end
        end
        most_word_author
    end
    
end


