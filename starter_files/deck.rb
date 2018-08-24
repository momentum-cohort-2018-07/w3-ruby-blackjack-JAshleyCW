require_relative "card"

class Deck
    # 'put' all 52 cards in the deck 
    attr_accessor :deck, :ranks, :suits, :deal

  def initialize
      @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
      @suits = [:clubs, :diamonds, :hearts, :spades]
      @deck = []
      @ranks.each do |rank|
          @suits.map do |suit|
              @deck << Card.new(rank, suit)
          end
      end
  end

  def shuffle 
  #  shuffle the cards
      @deck.shuffle!
  end

  def deal(num)
  # deal 1-2 cards to player and dealer
      num.times {@deck.shift.output_card}
  end

  def cards_left
      @deck.length
  end
end


