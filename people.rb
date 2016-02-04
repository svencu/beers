class Person
  def initialize(name)
    @name = name
  end
  def whats_your_name
    Person.name
  end

class Bartender(name) < Person
  super
  @customer = []
  def greet
    puts "Welcome to my bar"
  end
end

class Customer(name) < Person
  super
end
