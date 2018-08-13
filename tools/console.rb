require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#####TESTS


#customers
  a = Customer.new("a", "1")
  b = Customer.new("b", "1")
  c = Customer.new("c", "1")
  d = Customer.new("d", "1")
  e = Customer.new("e", "1")
  f = Customer.new("f", "1")
  g = Customer.new("a", "2")
  h = Customer.new("a", "3")



#restaurants
  r1 = Restaurant.new("r1")
  r2 = Restaurant.new("r2")
  r3 = Restaurant.new("r3")
  r4 = Restaurant.new("r4")
  r5 = Restaurant.new("r5")
  r6 = Restaurant.new("r6")
  r7 = Restaurant.new("r7")


#reviews
#initialize(customer, restaurant, rating, content)

  review1 = Review.new(a, r1, 1, "bad")
  review2 = Review.new(a, r2, 4, "good")
  review3 = Review.new(b, r3, 3, "bad")
  review4 = Review.new(f, r4, 2, "bad")
  review5 = Review.new(d, r4, 3, "good")
  review6 = Review.new(e, r1, 5, "good")
  review7 = Review.new(a, r1, 5, "really long review")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
