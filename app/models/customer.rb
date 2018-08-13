class Customer
  attr_accessor :first_name, :last_name

  @@all = [ ]

#returns all of the customers
  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

#given a string of a full name, returns the first customer whose full name matches
  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

#given a string of a first name, returns an array containing all customers with that first name
#returns array of customer instances
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

#should return an array of all of the customer full names
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

#given a restaurant object,
#some review content (as a string),
#and a star rating (as an integer),
#creates a new review and associates it with that customer and restaurant.
  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, rating, content)
  end


#returns the review for a given customer
#returns review instances
 def get_reviews
   Review.all.select do |review|
     review.customer == self
   end
 end



#Returns the total number of reviews that a customer has authored
  def num_reviews
    self.get_reviews.size
  end

#Returns a unique array of all restaurants a customer has reviewed
#returns restaurant instances
  def restaurants
    self.get_reviews.map do |review|
      review.restaurant
    end.uniq ####make sure it's unique
  end



end #end customer class
