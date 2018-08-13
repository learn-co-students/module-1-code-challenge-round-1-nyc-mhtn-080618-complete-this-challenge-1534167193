class Review

  @@all = []

  attr_reader :customer_name, :restaurant_name, :rating_amount, :content_string

  def initialize(customer_name, restaurant_name, rating_amount, content_string)
    @customer_name = customer_name
    @restaurant_name = restaurant_name
    @rating_amount = rating_amount
    @content_string = content_string
    @@all << self
  end

  def self.all
    @@all
  end

  #returns the customer object for that given review
  def customer
    customer_arr = Review.all.select do |review_ob|
      #binding.pry -> true
      review_ob == self
    end
    customer_arr.map do |review_ob|
      review_ob.customer_name
    end
  end # end of customer instance method


  #returns the restaurant object for that given review
  def restaurant
    restaurant_arr = Review.all.select do |review_ob|
      #binding.pry -> true
      review_ob == self
    end
    restaurant_arr.map do |review_ob|
      review_ob.restaurant_name
    end
  end # end of review instance method


  # returns the star rating for a restaurant. This should be an integer from 1-5
  def rating
    rating_arr = Review.all.select do |review_ob|
      #binding.pry -> true
      review_ob == self
    end
    rating_arr.map do |review_ob|
      review_ob.rating_amount.to_f
    end
  end # end of rating instance method


  # returns the review content, as a string, for a particular review
  def content
    rating_arr = Review.all.select do |review_ob|
      #binding.pry -> true
      review_ob == self
    end
    rating_arr.map do |review_ob|
      review_ob.content_string
    end
  end # end of rating content method

end # end of Review Class
