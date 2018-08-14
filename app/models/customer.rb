require "pry"
class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  ## should return **all** of the customer instances
  def self.all
    @@all
  end

  ##given a string of a **full name**, returns the **first customer** whose full name matches
  def self.find_by_name(name)
    first_name = name.split[0]
    last_name = name.split[1]
    @@all.find do |customer|
      customer.first_name== first_name && customer.last_name ==last_name
    end
  end

##`Customer.find_all_by_first_name(name)`
  #- given a string of a first name, returns an **array** containing all customers with that first name

  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

##  `Customer.all_names`
  # - should return an **array** of all of the customer full names
  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end
  end

  #`Customer#add_review(restaurant, content, rating)`
  #  - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    Review.new(self,restaurant, content, rating)
  end

  #- `Customer#num_reviews`
  #  - Returns the total number of reviews that a customer has authored
  def num_reviews
    self_review=Review.all.select do |review|
      review.customer == self
    end
    self_review.length
  end

  #`Customer#restaurants`
    #- Returns a **unique** array of all restaurants a customer has reviewed
  def restaurant
    self_review=Review.all.select do |review|
      review.customer == self
    end
    self_review.map do |review|
      review.restaurant
    end.uniq

  end

end
