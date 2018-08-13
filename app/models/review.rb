class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end # self.all

end # class Review
