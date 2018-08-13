class Customer

  @@all = []

  attr_accessor :first_name, :last_name

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


  # given a string of a **full name**,
  # returns the **first customer** whose full name matches
  def self.find_by_name(name)
    Customer.all.find do |cust_ob|
      #binding.pry -> true
        cust_ob.full_name == name
    end
  end # end of self.find_by_name Class Method


  # given a string of a first name, returns an **array**
  # containing all customers with that first name
  def self.find_all_by_first_name(name)
    customer_name_arr = Customer.all.select do |cust_ob|
      #binding.pry -> true
        cust_ob.first_name == name
    end
    customer_name_arr
  end # end of self.find_all_by_first_name Class Method

  # should return an **array** of all of the customer full names
  def self.all_names
    all_name_arr = Customer.all.each do |cust_ob|
      #binding.pry -> true
        cust_ob.full_name
    end
    all_name_arr
  end # end of self.all_names Class Method


  # add_review(restaurant, content, rating)
  def add_review(restaurant, content, rating)
    Rating.new(self, restaurant, content, rating)
  end

  # num_reviews
  def restaurants
    restaurants = Review.all.select do |review_ob|
      binding.pry
      review_ob.customer_name == self
    end
    restaurants.map do |review_ob|
      review_ob.restaurant_name
    end
    restaurants.uniq
  end # end of rating content method



end # end of Customer Class
