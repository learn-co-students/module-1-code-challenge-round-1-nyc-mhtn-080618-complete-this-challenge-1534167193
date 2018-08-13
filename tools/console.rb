require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Justin", "Wang")
customer2 = Customer.new("Jason", "Wang")
customer3 = Customer.new("Dan", "Harris")
customer4 = Customer.new("Justin", "Harris")

restaurant1 = Restaurant.new("Wendy's")
restaurant2 = Restaurant.new("Something else")

# Customer tests
test1 = Customer.find_by_name("Justin Wang")
test2 = Customer.find_all_by_first_name("Justin")
test3 = Customer.all_names
test10 = customer1.add_review(restaurant1, "testing", 4)
test11 = customer1.add_review(restaurant2, "check2222", 3)
test12 = customer2.add_review(restaurant1, "check322222", 2)
test13 = customer1.add_review(restaurant1, "check4", 5)

# Restaurant tests
test4 = Restaurant.find_by_name("Something else")

# Review tests
test5 = Review.new(customer1, restaurant1, 0, "check")
test6 = Review.new(customer1, restaurant1, 6, "check")
test7 = Review.new(customer1, restaurant1, 5, "check")
test8 = Review.new(customer1, restaurant1, 1, "check")
test9 = Review.new(customer1, restaurant1, 3, "check")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
