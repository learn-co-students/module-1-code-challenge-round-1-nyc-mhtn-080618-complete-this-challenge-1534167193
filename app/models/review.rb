class Review

  attr_reader :customer, :restaurant, :rating, :content

  @@all = [ ]

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

#returns all of the reviews
  def self.all
    @@all
  end

end #end review class
