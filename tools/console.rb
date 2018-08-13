require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("first1", "last1")
customer2 = Customer.new("first2", "last2")
customer3 = Customer.new("first3", "last3")

restaurant1 = Restaurant.new("restaurant1")
restaurant2 = Restaurant.new("restaurant2")
restaurant3 = Restaurant.new("restaurant3")

review1 = Review.new(customer1, restaurant2, 5, "content")
review2 = Review.new(customer2, restaurant3, 3, "content111")
review3 = Review.new(customer3, restaurant2, 2, "content2")
review4 = Review.new(customer2, restaurant1, 4, "content33333")
review5 = Review.new(customer1, restaurant2, 5, "content4444")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
