class Review

  attr_accessor :content
  attr_reader :customer, :restaurant, :rating

  @@all = []

  def initialize(custIn, restIn, ratingIn, contentIn)
    @customer = custIn
    @restaurant = restIn
    self.rating = ratingIn
    @content = contentIn
    @@all << self
  end

  def self.all
    @@all
  end

  def rating=(ratingIn) # Rating 1-5
    if ratingIn > 5
      @rating = 5
    elsif ratingIn < 1
      @rating = 1
    else
      @rating = ratingIn
    end
  end

end
