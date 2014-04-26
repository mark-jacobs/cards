# Deck of 52 playing cards.
class Deck

  def initialize
    @deck_array = []
    @card_suit
    @card_rank
    @card_counter = 52
    # Loops to generate cards and populate the deck.
    4.times do |suit|
      13.times do |rank|
        # Set the suit
        case suit
        when 0
          @card_suit = :spades
        when 1 
          @card_suit = :hearts
        when 2
          @card_suit = :diamonds
        when 3
          @card_suit = :clubs
        end
        # Set the rank
        case rank
        when 0
          @card_rank = :ace 
        when 1
          @card_rank = :two
        when 2 
          @card_rank = :three
        when 3 
          @card_rank = :four
        when 4
          @card_rank = :five
        when 5
          @card_rank = :six
        when 6
          @card_rank = :seven
        when 7
          @card_rank = :eight
        when 8
          @card_rank = :nine
        when 9
          @card_rank = :ten
        when 10
          @card_rank = :jack
        when 11
          @card_rank = :queen
        when 12
          @card_rank = :king
        end
        # Create the card and add to the array.
        @deck_array << Card.new(@card_suit, @card_rank)
      end
    end
    # Shuffle the deck.
    shuffle_deck
  end
  
  # public methods.
  public 

  # Display each card in the deck, for testing.
  def display_deck
    @deck_array.each do |x|
      x.display_card
    end
  end

  # Deal a card.
  def deal_card
    @card_counter -= 1
    if @card_counter >= 0 
      return card_to_return = @deck_array[@card_counter]
    else
      "No cards remain in the deck"
    end
  end

  # Private methods.
  private 
  
  # Randomly chooses two cards and swaps them.
  def shuffle_deck
    300.times do
      # Select cards to swap
      position_one = rand(52)
      position_two = rand(52)
      # Get the cards from the array and swap.
      card_one = @deck_array[position_one]
      @deck_array[position_one] = @deck_array[position_two]
      @deck_array[position_two] = card_one
    end
  end
end