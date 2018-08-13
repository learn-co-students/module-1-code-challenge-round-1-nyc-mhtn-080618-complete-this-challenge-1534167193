class Review
  @@all = []

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

=begin
  - `Review#customer`
    - returns the customer object for that given review
    - Once a review is created, I should not be able to change the author
  - `Review#restaurant`
    - returns the restaurant object for that given review
    - Once a review is created, I should not be able to change the restaurant
  - `Review#rating`
    - returns the star rating for a restaurant. This should be an integer from 1-5
  - `Review#content`
    - returns the review content, as a string, for a particular review
=end

  def initialize(customer,restaurant,content,rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

#  - `Review.all`
#    - returns all of the reviews
  def self.all
    @@all
  end

end
