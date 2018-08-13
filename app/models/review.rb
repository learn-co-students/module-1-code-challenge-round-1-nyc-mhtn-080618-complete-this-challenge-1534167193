class Review

  attr_accessor :customer, :rating, :content
  attr_reader :restaurant

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
end

def self.all
  @@all
end

def customer(first_name, last_name)
  Customer.new(first_name, last_name)
end

def rating(rating)
  if @rating < 5 && @rating > 1
    true
  else
    "Please rate restaurant 1 - 5"
end
end
end #end class
