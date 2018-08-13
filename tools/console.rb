require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
 customer1 = Customer.new("first_name1", "last_name1")
 customer2 = Customer.new("first_name2", "last_name2")
 customer3 = Customer.new("first_name3", "last_name3")
 customer4 = Customer.new("first_name4", "last_name4")

 restaurant1 = Restaurant.new("name1")
 restaurant2 = Restaurant.new("name2")
 restaurant3 = Restaurant.new("name3")
 restaurant4 = Restaurant.new("name4")

 review1 = Review.new(customer2, restaurant1, "content1", 4)
 review2 = Review.new(customer3, restaurant2, "content2", 1)
 review3 = Review.new(customer1, restaurant3, "content3", 6)
 review4 = Review.new(customer4, restaurant4, "content4", 7)
 review5 = Review.new(customer1, restaurant3, "content4", 7)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
