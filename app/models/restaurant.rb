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

  def self.find_by_name(rest_name_string)
    all.find do |restaurant|
      restaurant.name == rest_name_string
    end
  end

  def customers
    reviews.collect do |review|
      review.customer.full_name
    end.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    total_stars = 0
    reviews.each do |review|
      total_stars += review.rating
    end

    (total_stars.to_f / reviews.length)
  end

  def longest_review
    longest_length = 0
    longest = nil

    reviews.each do |review|
      if review.content.length > longest_length
        longest_length = review.content.length
        longest = review
      end
    end
    longest
  end









end
