class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name_string)
    all.find do |customer|
      customer.full_name == full_name_string
    end
  end

  def self.find_all_by_first_name(first_name_string)
    all.select do |customer|
      customer.first_name == first_name_string
    end
  end

  def self.all_names
    all.collect do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant,content,rating)
    Review.new(restaurant,self,rating,content)
  end

  def num_reviews
    revs = Review.all.select do |review|
      review.customer == self
    end
    revs.length
  end

  def restaurants
    revs = Review.all.select do |review|
      review.customer == self
    end

    revs.collect do |rev|
      rev.restaurant
    end.uniq
  end





end
