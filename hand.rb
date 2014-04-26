# Holds the players and dealers cards for a game of pontoon.
class Hand
  
  #initialise the hand with a card.
  def initialize(a_card)
    @cards_in_hand = [a_card]
  end

  # Return the cards in the hand.
  def get_hand
    return @cards_in_hand
  end

  def display_hand
    @cards_in_hand.each do |x|
      x.display_card
    end
  end

  # Adds a card from the deck to the hand.
  def receive_card(a_card)
    @cards_in_hand << a_card
  end
  
  # Calculates the score of the hand
  def score_hand

  end

  # Returns length of hand
  def hand_length
    return @cards_in_hand.length
  end

  # Returns if pontoon...
  def is_pontoon?
    if hand_length == 2 && 
      (@cards_in_hand[0].card_value == 10 && @cards_in_hand[1].rank == :ace) || 
      (@cards_in_hand[0].rank == :ace && @cards_in_hand[1].card_value == 10)
        check_pontoon = true
    else
      check_pontoon = false
    end
  return check_pontoon
  end
end










