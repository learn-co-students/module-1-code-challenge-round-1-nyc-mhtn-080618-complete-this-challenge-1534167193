class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(restaurant_name)
    @@all.find do |name|
      name.name == restaurant_name
    end
  end

  def customers
    customer_array = []
    review_array = Review.all.select do |reviews|
      reviews.restaurant == self
    end
    review_array.each do |reviews|
      if customer_array.include?(reviews.customer)
      else
        customer_array.push(reviews.customer)
      end
    end
    return customer_array
  end


  def average_star_rating
    star_rating_counter = 0
    counter = 0
    review_array = Review.all.select do |reviews|
      reviews.restaurant == self
    end
    review_array.each do |reviews|
      #binding.pry
      star_rating_counter += reviews.rating
      counter += 1
    end
    return star_rating_counter / counter
  end


## this is where I ran out of time - going to iterate through and do count of review
  def longest_review
    review_array = Review.all.select do |reviews|
      reviews.restaurant == self
    end
    review_array.each do |reviews|
      
    end
  end

end
