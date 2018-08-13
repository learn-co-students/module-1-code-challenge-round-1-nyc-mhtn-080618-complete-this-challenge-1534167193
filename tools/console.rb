require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Dan","Peach")
customer2 = Customer.new("David", "Storch")


restaurant1 = Restaurant.new("Allswell")
restaurant2 = Restaurant.new("Burger King")


new_review = Review.new(customer1,restaurant1,5,"bad_place")
newest_review = Review.new(customer2,restaurant1,9,"bad_place")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
