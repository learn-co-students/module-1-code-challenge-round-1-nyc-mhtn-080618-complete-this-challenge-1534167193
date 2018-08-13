class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.to_i
    @content = content
    @@all << self
  end

  def self.all
    @all
  end

  def rating_rang
    if self.rating > 5
      self.rating = 5
    elsif self.rating < 1
      self.rating = 1
    end
  end


end # end of class
