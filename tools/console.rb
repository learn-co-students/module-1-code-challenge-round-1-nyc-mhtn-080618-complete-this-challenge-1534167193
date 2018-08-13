require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Instance of Customer Class
cust1 = Customer.new("Parker", "Dinsmore")
cust2 = Customer.new("Griffin", "Dinsmore")
cust3 = Customer.new("Brennan", "Dinsmore")
cust4 = Customer.new("Parker", "Smith")


#Instances of Restaurant Class
rest1 = Restaurant.new("Orsay")
rest2 = Restaurant.new("Eats")
rest3 = Restaurant.new("Howells")
rest4 = Restaurant.new("Thep")


#Instances of Review Class (customer_name, restaurant_name, rating_amount, content_string)
review1 = Review.new(cust1, rest1, 4, "Great Food")
review2 = Review.new(cust1, rest1, 5, "Amazing Food!")
review3 = Review.new(cust2, rest1, 3, "Pretty Good Food")
review4 = Review.new(cust3, rest1, 1, "I got food poisoning")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
