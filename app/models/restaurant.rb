class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find{|restarurant|
      restarurant.name == self
    }
  end

  def reviews
    Review.all.select{|restaurant|
      restaurant.restarurant == self
    }
  end

  def customer
    reviews.map{|restaurant|
      restaurant.customer
    }.uniq
  end

  def average_star_rating
    counter = 0
    total_rating = reviews.each{|review|
      counter += review.rating
    }
    counter
    counter.to_f / reviews.length
  end

  def longest_review
    counter = 0
    content = reviews[0].content
    reviews.each do |review|
      if review.content.length > counter
        counter = review.content.length
        content = review.content
      end
    end
    content
  end

end #end class
