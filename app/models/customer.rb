class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end # initialize

  def full_name
    "#{first_name} #{last_name}"
  end # full_name

  def self.all
    @@all
  end # self.all

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.full_name == name
    end # all.find
  end # self.find_by_name

  def self.find_all_by_first_name(name)
    first_name_to_search = name.split[0]
    @@all.select do |customer|
      customer.first_name == first_name_to_search
    end # all.select
  end # self.find_all_by_first_name

  def self.all_names
    @@all.map do |customer|
      customer.full_name
    end # all.map
  end # self.all_names

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end # add_review

  def reviews
    Review.all.select do |review|
      review.customer == self
    end # Review.all.select
  end # reviews

  def num_reviews
    reviews.length # Review.all.select
  end # num_reviews

  def restaurants
    reviews.map do |review|
      review.restaurant
    end.uniq # reviews.map
  end # restaurants

end # class Customer
