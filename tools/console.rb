require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
kristina_tong= Customer.new('kristina','tong')
michael_scott = Customer.new('michael','scott')
michael_fox = Customer.new('michael','fox')
barrack_obama = Customer.new('barrack','obama')
totto_ramen = Restaurant.new('totto ramen')
chipotle = Restaurant.new('chipotle')

review1 = kristina_tong.add_review(totto_ramen,"best ramen ever!!",5)
review2 = kristina_tong.add_review(chipotle,"good",3)
review3 = kristina_tong.add_review(chipotle,"ok",2)
review4 = kristina_tong.add_review(chipotle,"chipotle is really really really good",5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
