require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust1=Customer.new("Maddy", "Tabing")
cust2=Customer.new("firstname", "lastname")
cust3=Customer.new("Christopher", "Robin")
cust4=Customer.new("Maddy", "lastname")

rest1 = Restaurant.new("Chipotle")
rest2 = Restaurant.new("Emily")
rest3 = Restaurant.new("Barbuto")
rest4 = Restaurant.new("Taco Shop")

review1= Review.new(cust1, rest2, 5, "good")
review2= Review.new(cust1, rest3, 1, "bad")
review3= Review.new(cust2, rest3, 4, "ok")
review4= Review.new(cust3, rest4, 5, "great")
review5=Review.new(cust3, rest3, 2, "really good")
review6 = Review.new(cust2, rest3, 1, "just ok")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
