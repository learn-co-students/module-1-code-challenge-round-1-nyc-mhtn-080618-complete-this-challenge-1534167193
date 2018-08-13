class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews #iterate thru Review.all, return reviews. restaurant == self
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers #iterate thru #reviews, return customers.uniq
    reviews.map do |review|
      review.customer.full_name
    end.uniq
  end

  def ratings #iterate thru #reviews, return array of all ratings
    reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating #go thru #ratings array, add totals and find average
    num_reviews = self.reviews.count
    total = 0
    ratings.each do |rating|
      total += rating
    end
    (total / num_reviews)
  end

  def content_of_review
    reviews.map do |review|
      review.content
    end
  end

  def longest_review #use #content_of_review, sort by length, return longest
    content_of_review.sort_by do |content|
      content.length
    end.last
  end


end #END CLASS
