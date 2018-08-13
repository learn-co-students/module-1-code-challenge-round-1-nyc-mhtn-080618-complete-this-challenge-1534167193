class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(restaurant, self, rating, content)
  end

  def reviews  #returns all reviews by customer
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews #uses #reviews, return count
    self.reviews.count
  end

  def restaurants #use #reviews, return array of restaurants.uniq
    reviews.map do |review|
      review.restaurant.name
    end.uniq
  end

end #END CLASS
