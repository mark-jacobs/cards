require './cards'
require './deck'
require './hand'

# Run game and check scores etc.
class Pontoon

  def initialize
    @my_deck = Deck.new
    @player_hand = Hand.new(@my_deck.deal_card)
    @dealer_hand = Hand.new(@my_deck.deal_card)
    run_game
  end

  private 

  # game logic.
  def run_game
    puts "Initial Card:"
    @player_hand.display_hand
    @player_hand.receive_card(@my_deck.deal_card)
    puts "Cards in hand:"
    @player_hand.display_hand
    puts @player_hand.is_pontoon?
  end

  #Display cards in hand.
  
end

# Start a game
new_game = Pontoon.new