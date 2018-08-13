class Restaurant
  attr_accessor :name, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.find_by_name(nameIn)
    self.all.find do |restaurant|
      restaurant.name == nameIn
    end
  end

  def self.all
      @@all
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    sum = 0.0
    self.reviews.each do |review|
      sum += review.rating
    end

    average = sum / reviews.length
    average.round(2)
  end

  def longest_review
    #self.reviews.content.max_by(&:length)

    longest = reviews[0].content
    reviews.each do |review|
      if review.content.length > longest.length
        longest = review.content
      end
    end
    longest
  end

end
