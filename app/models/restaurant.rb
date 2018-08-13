class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end


  # given a string of restaurant name,
  # returns the first restaurant that matches
  def self.find_by_name(rest_name)
    Restaurant.all.select do |restaurant_ob|
      #binding.pry -> true
      restaurant_ob.name == rest_name
    end
  end # end of self.find_by_name Class Method
end # end of Restaurant Class
