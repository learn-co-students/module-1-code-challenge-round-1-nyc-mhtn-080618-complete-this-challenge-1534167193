require 'pry'
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


  def self.find_by_name(name)
    find_name = Review.all.find do |cust_name|
      cust_name.name == full_name
      binding.pry
    end
  end

  def add_review(restaurant, content, rating)
    Customer.new(self, restaurant, content, rating)
  end


  def full_name

    "#{first_name} #{last_name}"
  end
end
