class Book
    attr_accessor :title

    def initialize(title, price)
        @title = title
        @price = price
    end

    def rename_title(title)
        @title = title
    end

    def price_increase
        @price *= 2
    end
end

sample = Book.new("dummy", 400)
p sample.title
print "rename_title ->"
sample.rename_title("DUMMY")
p sample.title
p "book:400-> #{sample.price_increase}"

class Publications
    def initialize(title, price)
        @title = title
        @price = price
    end
end

class Comic < Publications
    def price_increase
        @price *= 1.5
    end
end

class Magazine < Publications
    def price_increase
        @price *= 3
    end
end

p "comic:400-> #{Comic.new("sample", 400).price_increase}"
p "magazine:400-> #{Magazine.new("sample", 400).price_increase}"
