require './people'

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



joe = Bartender.new("Joe")
mike = Customer.new("Mike")
joe.bartender_greet
mike.whats_your_name
