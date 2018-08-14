class Restaurant
  @@all =[]
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#  - `Restaurant.find_by_name(name)`
  #  - given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  #`Restaurant#customers`
    #- Returns a **unique** list of all customers who have reviewed a particular restaurant.
  def my_restarant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customer
    my_restarant.map do |review|
      review.customer
    end.uniq
  end
  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  def  reviews
    my_restarant
  end
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    total = 0
    my_restarant.map do |review|
      total += review.rating
    end
    total.to_f/my_restarant.length
  end
  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant
  def longest_review
    longest_review =my_restarant.sort_by do |review|
      review.content.length
    end.last

    longest_review.content
  end
end
