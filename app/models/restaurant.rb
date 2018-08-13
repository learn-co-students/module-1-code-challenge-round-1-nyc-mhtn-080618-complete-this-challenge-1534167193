class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

#  - `Restaurant.all`
#    - returns an array of all restaurants
  def self.all
    @@all
  end

#  - `Restaurant.find_by_name(name)`
#    - given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    all.find do |restaurant|
      restaurant.name == name
    end
  end

#  - `Restaurant#customers`
#    - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

#  - `Restaurant#reviews`
#     - returns an array of all reviews for that restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

#  - `Restaurant#average_star_rating`
#    - returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    total_rating = 0
    reviews.each do |review|
      total_rating += review.rating
    end
    total_rating.to_f/reviews.length
  end

#  - `Restaurant#longest_review`
#    - returns the longest review content for a given restaurant
  def longest_review
    sorted_reviews = reviews.sort_by do |review|
      review.content.length
    end
    sorted_reviews.last.content
  end

end
