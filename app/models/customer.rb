require 'pry'
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
    @@all.select do |first_customer|
      if first_customer == name
        return name
    end
  end

end #binding.pry

  def self.find_all_by_first_name(name)
    @@all.map do |customer_first_name|
      customer_first_name.name
    end
  end #binding.pry

  def self.all_names
    @@all.map do |name|
      name.full_name
    end
  end


  def add_review(restaurant, content, rating)
      #add to the Customer Instance
      @@all << Review.new(review, customer, name)

    end

  def num_reviews
    total = 0

    #need a counter variable that counts
    #how many times a customer instance has created in the review class
  end

  def restaurants

  end

end #end of class
