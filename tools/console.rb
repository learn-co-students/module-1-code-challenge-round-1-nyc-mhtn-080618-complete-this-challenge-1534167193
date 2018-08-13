require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jesse = Customer.new("Jesse", "McReady")
bobby = Customer.new("Bobby", "Baratheon")
bob_build = Customer.new("Bobby", "the Builder")

vincents = Restaurant.new("Vincents Clam Bar")
m_noodle = Restaurant.new("M Noodle")
danis = Restaurant.new("Dani's House of Pizza")

danis_review = Review.new(jesse, danis, "Amazing", 5)
vins_review1 = Review.new(jesse, vincents,  "Okay", 3)
vins_review4 = Review.new(jesse, vincents,  "The best", 5)
vins_review2 = Review.new(bobby, vincents, "Awesome" , 4)
vins_review3 = Review.new(bob_build, vincents, "Okay", 3)

bobby.add_review(m_noodle, "An open field Ned. A Dothraki horde in an open field!", 5)
bobby2 = Customer.new("Bobby", "Baratheon")
bob_build.add_review(m_noodle, "I can fix it", 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
