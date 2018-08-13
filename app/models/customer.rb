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

  def Customer.find_by_name(name)
    self.all.find do |customer_instance|
      customer_instance.full_name == name
    end
  end

  def Customer.find_all_by_first_name(name)
    self.all.select do |customer_instance|
      customer_instance.first_name == name
    end
  end

  def Customer.all_names
    self.all.map do |customer_instance|
      customer_instance.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    counter = 0
    Review.all.each do |review_instance|
      if review_instance.customer == self
        counter += 1
      end
    end
    counter
  end

  def restaurants
    a = Review.all.select do |review_instance|
      review_instance.customer == self
    end

    b = a.map do |review_instance|
      review_instance.restaurant
    end
    b.uniq
  end





end #end of class
