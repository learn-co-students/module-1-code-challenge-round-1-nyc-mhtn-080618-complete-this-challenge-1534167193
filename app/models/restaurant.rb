class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total = reviews.reduce(0) do |sum, review|
      sum + review.rating
    end
    total.to_f / reviews.length
  end

  def longest_review
    reviews.sort_by do |review|
      review.content.length
    end.last.content
  end
end
