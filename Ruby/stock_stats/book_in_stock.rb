class BookInStock

  attr_accessor :price,:isbn

  def initialize(isbn,price)
    @isbn = isbn
    @price = Float(price);
  end

  def to_s
    "ISBN: #{@isbn},price: #{@price}"
  end

end
