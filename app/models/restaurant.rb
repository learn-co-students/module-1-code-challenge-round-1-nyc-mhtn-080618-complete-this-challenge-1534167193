class Restaurant
  attr_accessor :name


  @@all = [ ]


#returns an array of all restaurants
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

#given a string of restaurant name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

#returns an array of all reviews for that restaurant
##returns review intances
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

#Returns a unique list of all customers who have reviewed a particular restaurant.
#returns customer instances
  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq #we want unique
  end

#returns the average star rating for a restaurant based on its reviews
  def average_star_rating
    total_stars = 0
    self.reviews.each do |review|
      total_stars += review.rating
    end

    #average = sum/n
    average = total_stars.to_f/self.reviews.size
    #returns floating point number

    #return nearest integer as specified
    average.round

  end


#returns the longest review content for a given restaurant
  def longest_review
    #sort the reviews by the length of the Content
    #this will return a sorted array of Review instances
    ordered_reviews = self.reviews.sort_by do |review|
      review.content
    end

    #this will return the actual content string for the longest review
    ordered_reviews.last.content
  end



end #end restaurant class
