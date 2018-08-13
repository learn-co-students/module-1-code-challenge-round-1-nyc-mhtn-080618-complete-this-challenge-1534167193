class Review
  attr_reader :customer, :restaurant, :rating, :review_content
  @@all = []

  def initialize(customer,restaurant,rating,review_content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @review_content = review_content
    @@all << self
  end

  def self.all
    @@all
  end

end
