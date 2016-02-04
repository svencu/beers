require './person'
require './bartender'
require './customer'

class Beer
  # We ONLY want to be able to read @amount, not
  # change it without calling "sip!"
  attr_reader :amount

  def initialize
    @amount = 250
  end

  def sip!
    if @amount > 0
      puts "Slorp!"
      @amount -= 25
    end
  end
end


the_bartender = Bartender.new("Joe")
captain_jack = Customer.new("Cpt. Jack")

the_bartender.greet(captain_jack)
the_bartender.serve(captain_jack)

# Captain Jack can drink while he has beer
while captain_jack.has_beer?
  captain_jack.drink!
  sleep 1
end

captain_jack.drink!
the_bartender.serve(captain_jack)
