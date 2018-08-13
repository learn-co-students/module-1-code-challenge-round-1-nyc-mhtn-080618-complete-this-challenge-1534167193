class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    name = name.split(" ")
    first_name = name[0]
    last_name = name[1]
    Customer.all.find do |customer|
      customer.first_name == first_name && customer.last_name == last_name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name = name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end

  def num_reviews
    reviews.length
  end

  def restaurants
    restaurants = reviews.map do |review|
      review.restaurant
    end
      restaurants.uniq
  end


end #end of class
