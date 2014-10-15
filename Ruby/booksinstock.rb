class BooksInStock

  attr_accessor :price,:isbn

  def initialize(isbn,price)
    @isbn = isbn
    @price = Float(price);
  end

  def to_s
    "ISBN: #{@isbn},price: #{@price}"
  end

  def price_in_cents
    @price + 100
  end

end

 b1 = BooksInStock.new('isbn1',120)
 b2 = BooksInStock.new('isbn4',121)
 b3 = BooksInStock.new('isbn6',123)

 b1.isbn = 'new isbn'
 puts b1.isbn
 p b2.price_in_cents
 p b2.price
 p b3
