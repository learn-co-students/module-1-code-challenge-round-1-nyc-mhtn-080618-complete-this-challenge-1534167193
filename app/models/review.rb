require 'pry'

class Review

  attr_accessor :review   #reviews change
  attr_reader  :customer, :name #:name represents the restaurant

@@all = []

  def initialize(review)
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    Customer.new(first_name, last_name) #creates a customer instance from class customer
  end

  def restaurant
    Restaurant.new(name)
  end

  def rating
    @@all.each do |rating|
      rating.restaurant
    end
  end


  def content
    @@all.each do |content|
      content.self
    end
  end


end
