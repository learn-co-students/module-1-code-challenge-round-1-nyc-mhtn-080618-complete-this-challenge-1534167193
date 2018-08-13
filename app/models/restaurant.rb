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
    self_review=Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customer
    my_restarant.map do |restaurant|
      restaurant.cutomer
  end


end
