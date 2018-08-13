require 'pry'
class Restaurant
  attr_accessor :name, :content, :rating

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all #array of all restaurants
  end

  def self.find_by_name(name)
      @@all.select do |restaurant_name|
        if restaurant_name == name
        name
      end
    end
  end



end #end of class
