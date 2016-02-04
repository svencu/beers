#require './beer_class'
class People
  def initialize(name)
    @name = name
  end

  #def whats_your_name
  #end

  def general_greet(other_person)
    say "How are you today?"
    other_person.general_response
  end

  def say(message)
    puts "#{@name}: #{message}"
  end
  def general_response
    say "fine"
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
end


class Customer < People
  def initialize(name)
    super
  end

  def greet
    puts "Hi! Can I have a beer please, #{@name}"
  end
end
joe = Bartender.new("Joe")
mike = Customer.new("Mike")
joe.say("I am saying someing")
joe.general_greet(mike)
