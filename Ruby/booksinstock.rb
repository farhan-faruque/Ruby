class BooksInStock

  attr_reader :isbn, :price

  def initialize(isbn,price)
    @isbn = isbn
    @price = Float(price);
  end

  def to_s
    "ISBN: #{@isbn},price: #{@price}"
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end

end

 b1 = BooksInStock.new('isbn1',120)
 b2 = BooksInStock.new('isbn4',121)
 b3 = BooksInStock.new('isbn6',123)

 b1.isbn = 'new isbn'
 puts b1.isbn
 p b2
 p b3
