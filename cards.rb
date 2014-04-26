# Card class, represents a playing card.
class Card
  
  attr_reader :suit, :rank
  # Accepts rank and suit as arguments.
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def display_card
    puts "#{@rank} of #{@suit}"
  end

  # Gives value of card for scoring in pontoon.
  def card_value
    the_value = 0
    case @rank
    when :ace 
      the_value = 1
    when :two 
      the_value = 2
    when :three
      the_value = 3
    when :four
      the_value = 4
    when :five
      the_value = 5
    when :six
      the_value = 6
    when :seven
      the_value = 7
    when :eight
      the_value = 8
    when :nine
      the_value = 9
    else
      the_value = 10
    end
    return the_value
  end

end


