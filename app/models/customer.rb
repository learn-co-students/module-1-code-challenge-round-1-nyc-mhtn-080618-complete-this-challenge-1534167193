class Customer
  attr_accessor :first_name, :last_name

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

  def self.find_all_by_first_name(name)
    @@all.select do |customers|
      customers.first_name == name
    end
  end

  def self.all_names
    empty_array = []
    @@all.each do |customers|
      empty_array.push("#{customers.first_name} #{customers.last_name}")
    end
  end

  def add_review(restaurant,rating,review_content)
    Review.new(self,restaurant,rating,review_content)
  end

  def num_reviews
    #binding.pry
    counter = 0
    array_variable = Review.all.select do |reviews|
      reviews.customer == self
    end
    array_variable.each do |review|
      counter += 1
    end
    return counter
  end

  def restaurants
    restaurant_array = []
    array_variable = Review.all.select do |reviews|
      reviews.customer == self
    end
    array_variable.each do |reviews|
      if restaurant_array.include?(reviews.restaurant)

      else
        restaurant_array.push(reviews.restaurant)
      end
    end
      return restaurant_array
  end


end
