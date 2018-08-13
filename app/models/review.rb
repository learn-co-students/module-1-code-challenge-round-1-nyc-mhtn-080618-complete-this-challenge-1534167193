class Review

    attr_reader :customer, :restarurant, :content, :rating

    @@all = []

    def initialize(customer, restarurant, content, rating)
      @restarurant = restarurant
      @customer = customer
      @rating = rating
      @content = content
      @@all << self
    end

    def self.all
      @@all
    end


end
