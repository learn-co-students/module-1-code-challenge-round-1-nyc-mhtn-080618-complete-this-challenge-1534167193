require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

yixuan_wang=Customer.new("yixuan", "wang")
yixuan_yo = Customer.new("yixuan", "yo")
mc = Restaurant.new("mc")
kfc = Restaurant.new("Restaurant")
mc = Restaurant.new("mc")

review1 = Review.new(yixuan_wang,mc,"hi",5)
review2= yixuan_yo.add_review(kfc, "ok",1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
