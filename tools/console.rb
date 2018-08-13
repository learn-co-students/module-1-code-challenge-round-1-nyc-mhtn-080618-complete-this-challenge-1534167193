require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("firstname1", "lastname1")
customer2 = Customer.new("firstname1", "lastname2")
customer3 = Customer.new("firstname3", "lastname3")
customer4 = Customer.new("firstname4", "lastname4")
customer5 = Customer.new("firstname5", "lastname5")

restaurant1 = Restaurant.new("rest1")
restaurant2 = Restaurant.new("rest2")
restaurant3 = Restaurant.new("rest3")
restaurant4 = Restaurant.new("rest4")
restaurant5 = Restaurant.new("rest5")

review1 = Review.new(customer1, restaurant1, 5, "Good")
review2 = Review.new(customer2, restaurant2, 3, "Great")
review3 = Review.new(customer3, restaurant3, 2, "Solid")
review4 = Review.new(customer4, restaurant5, 4, "Bad")
review5 = Review.new(customer5, restaurant4, 2, "Sucks")
review6 = Review.new(customer1, restaurant3, 1, "Amazing")
review7 = Review.new(customer1, restaurant3, 3, "Incredible")

customer2.add_review(restaurant4, "Awesome", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
