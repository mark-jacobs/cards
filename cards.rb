# Card class, represents a playing card.
class Card
  
  # Accepts rank and suit as arguments.
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end

# Deck of 52 playing cards.
class Deck

  def initialize()
    @deck_array = []
    @card_suit
    @card_rank
    # Loops to generate cards and populate the deck.
    4.times do |suit|
      13.times do |rank|
        # Set the suit
        case suit
        when 1
          @card_suit = :spades
        when 2 
          @card_suit = :hearts
        when 3
          @card_suit = :diamonds
        when 4
          @card_suit = :clubs
        end
        # Set the rank
        case rank
        when 1
          @card_rank = :ace 
        when 2
          @card_rank = :two
        when 3 
          @card_rank = :three
        when 4 
          @card_rank = :four
        when 5
          @card_rank = :five
        when 6
          @card_rank = :six
        when 7
          @card_rank = :seven
        when 8
          @card_rank = :eight
        when 9
          @card_rank = :nine
        when 10
          @card_rank = :ten
        when 11
          @card_rank = :jack
        when 12
          @card_rank = :queen
        when 13
          @card_rank = :king
        end
        # Create the card and add to the array.
        @deck_array << Card.new(@card_suit, @card_rank)
      end
    end
  end
end

my_deck = Deck.new






