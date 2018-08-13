require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("Champy's")
rest2 = Restaurant.new("KFC")
rest3 = Restaurant.new("Pete's")

cust1 = Customer.new("Forrest","Benton")
cust2 = Customer.new("Oliver", "Benton")
cust3 = Customer.new("Linda", "Benton")

review1 = Review.new(rest1,cust1,5,"The food was positively delicious! :)")
review2 = Review.new(rest2,cust1,4,"Food was good.")
review3 = Review.new(rest2,cust3,1,"Terrible!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
