class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end # initialize

  def self.all
    @@all
  end # self.all

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end # all.find
  end # self.find_by_name

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end # Review.all.select
  end # reviews

  def customers
    reviews.map do |review|
      review.customer
    end.uniq # reviews.map
  end # customers

  def average_star_rating
    total_stars = 0.0
    reviews.each do |review|
      total_stars += review.rating
    end # reviews.each
    (total_stars / reviews.length).to_f
  end # average_star_rating

  def longest_review
    longest_review_length = 0
    longest_review_content = ""

    reviews.each do |review|
      if review.content.length > longest_review_length
        longest_review_length = review.content.length
        longest_review_content = review.content
      end # if review.content.length
    end  # reviews.each

    longest_review_content
  end # longest_review

end
