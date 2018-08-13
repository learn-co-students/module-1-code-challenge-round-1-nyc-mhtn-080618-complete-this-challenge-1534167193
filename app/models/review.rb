class Review

  @@all = []
  attr_reader :restaurant, :customer, :rating, :content

  def initialize(restaurant,customer,rating,content)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  # For the 1-5 rating, should we make a helper method that
  # restricts the star rating? Unclear...







end
