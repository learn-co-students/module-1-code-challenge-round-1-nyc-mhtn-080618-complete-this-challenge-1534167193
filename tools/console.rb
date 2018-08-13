require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
def test(str,v1,v2)
  if v1==v2
    puts str.green
  else
    puts str.red
    puts "\t expect #{v2},got #{v1}"
  end
end

cus1=Customer.new("c1f","c1l")
cus2=Customer.new("c2f","c2l")
cus3=Customer.new("c3f","c3l")
cus4=Customer.new("c4f","c4l")
cus5=Customer.new("c5f","c5l")

res1=Restaurant.new('res1')
res2=Restaurant.new('res2')
res3=Restaurant.new('res3')
res4=Restaurant.new('res4')
res5=Restaurant.new('res5')

cus1.add_review(res1,'ssssss',7)
cus1.add_review(res2,'ssssssss',9)
cus2.add_review(res2,'sssssssssss',8)
cus3.add_review(res3,'ssssssssssssss',5)
cus4.add_review(res3,'sssssssssssssssss',10)
cus4.add_review(res4,'ssssssss',5)
cus4.add_review(res5,'sssssssssss',6)
cus5.add_review(res5,'sssssssss',8)


test "cus1.full_name",cus1.full_name,"c1f c1l"
test "Customer.find_by_name",Customer.find_by_name("c3f c3l"),cus3
test "Customer.find_all_by_first_name",Customer.find_all_by_first_name("c2f"),[cus2]
test "cus4.num_reviews",cus4.num_reviews,3
test "cus1.restaurants",cus1.restaurants,[res1,res2]

test "res2.customers",res2.customers,[cus1,cus2]
test "res5.average_star_rating",res5.average_star_rating,7.0
test "res3.longest_review",res3.longest_review,'sssssssssssssssss'




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
