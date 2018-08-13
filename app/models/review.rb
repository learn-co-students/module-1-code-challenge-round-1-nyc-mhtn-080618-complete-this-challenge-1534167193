require "pry"
class Review

  attr_accessor  :content, :rating
  attr_reader :customer,:restaurant
  @@all =[]
  def initialize(customer,restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
  #- `Review#customer`
  #  - returns the customer object for that given review
  #  - Once a review is created, I should not be able to change the author
  #self.customer

#  `Review#restaurant`
  #  - returns the restaurant object for that given review
  #  - Once a review is created, I should not be able to change the restaurant


end
