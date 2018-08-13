class Restaurant
  attr_accessor :name
  @@all=[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{ |restaurant|
     restaurant.name==name }
   end

   def reviews
     Review.all.select{ |review|
      review.restaurant==self  }
   end

   def customers
     self.reviews.map{ |review|
      review.customer  }
  end

  def average_star_rating
    return 0 if self.reviews.length==0
    total=self.reviews.reduce(0){
      |sum,review|sum+review.rating
    }
    total.to_f/self.reviews.length
  end

  def longest_review
    max=0
    inst=nil
    self.reviews.each {|review|
      if review.content.length>max
        max=review.content.length
        inst=review.content
      end
    }
    inst
  end

end
