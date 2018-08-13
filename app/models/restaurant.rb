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

  def Restaurant.find_by_name(name)
    self.all.find do |restaurant_instance|
      restaurant_instance.name == name
    end
  end

  def customers
    a = Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
    b = a.map do |review_instance|
      review_instance.customer
    end
    b.uniq
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.restaurant == self
    end
  end

  def average_star_rating
    a = self.reviews
    counter = 0
    a.each do |review_instance|
      counter += review_instance.rating
    end
    counter.to_f / a.length
  end

  def longest_review
    a = self.reviews
    hash = {}
    b = a.each do |review_instance|
      hash[review_instance.restaurant] = review_instance.content.length
    end
    hash
  end





end #end of class
