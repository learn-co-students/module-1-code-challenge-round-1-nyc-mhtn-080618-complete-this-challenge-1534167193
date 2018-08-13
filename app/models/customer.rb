require 'pry'

class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(nameIn)
    self.all.find do |customer| # Returns first match of name
      #binding.pry
      fullName = customer.first_name + ' ' + customer.last_name
      fullName == nameIn
    end
  end

  def self.find_all_by_first_name(nameIn)
    self.all.select do |customer|
      nameIn == customer.first_name
    end
  end

  def self.all_names
    fullList = self.all.select do |customer| # Gets all matching customer objs
      customer.first_name
    end

    firstNames = fullList.map do |customer| # Return just first names
      customer.first_name
    end

    return firstNames
  end

  def add_review(restIn, contentIn, ratingIn)
    myReview = Review.new(self, restIn, ratingIn, contentIn)
    self.reviews << myReview
    restIn.reviews << myReview
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end
end
