class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    customers = reviews.map do |review|
      review.customer
    end
    customers.uniq
  end

  def average_star_rating
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    sum.to_f / reviews.length
  end

  def longest_rev
    contents = reviews.map do |review|
      review.content
    end
    contects_in_order = contents.sort_by {|contect| content.length}
    contents_in_order.last
  end

end #end of class
