#require './beer_class'
class People
  def initialize(name)
    @name = name
  end
  def whats_your_name
    say @name
  end
  def general_banter
    puts "How are you today?"
  end
end


class Bartender < People
  def initialize(name)
    super
    @customer = []
  end
  def bartender_greet
    puts "Welcome to my bar"
  end
  def whats_your_name
  end
end


class Customer < Person
  def initialize(name)
    super
  end
  def greet
    puts "Hi! Can I have a beer please, #{@name}"
  end
end

j = Bartender.new("Joe")
q = Customer.new("Mike")
j.bartender_greet
j.whats_your_name
