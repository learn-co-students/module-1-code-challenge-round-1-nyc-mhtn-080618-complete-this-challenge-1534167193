require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Marissa", "Orea")
customer2 = Customer.new("Jose", "Orea")
customer3 = Customer.new("Tahiry", "Guevara")

restraurant1 = Restaurant.new("Macdonalds")
restaurant2 = Restaurant.new("Pepppinos")

review1 = Review.new("good")
review2 = Review.new("bad")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
