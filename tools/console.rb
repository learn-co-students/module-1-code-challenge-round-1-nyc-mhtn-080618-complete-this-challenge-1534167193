require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new(first_name1, last_name1)
customer2 = Customer.new(first_name2, last_name2)
customer3 = Customer.new(first_name3, last_name3)

restaurant1 = Restaurant.new(restaurant1)
restaurant2 = Restaurant.new(restaurant2)
restaurant3 = Restaurant.new(restaurant3)

review1 = Review.new(customer1, restaurant1, "good", 5)
review2 = Review.new(customer2, restaurant2, "good", 4)
review3 = Review.new(customer3, restaurant3, "bad", 2)
review4 = Review.new(customer1, restaurant1, "good, good", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
