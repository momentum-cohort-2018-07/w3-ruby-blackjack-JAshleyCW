require_relative "card"

class Deck

    attr_accessor :cards

    def initialize
        # need 52 cards, from Card class, put in array cards []
        # need to know rank and suit
        @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
        @suits = [:clubs, :diamonds, :hearts, :spades]
        @cards = []
        # for each rank and suit, loop through and push each to card array
        @suits.each do |suit|
            @ranks.each do |rank|
                @cards << Card.new(rank, suit)
            end
        end
    
    def cards_left
        @cards.length
    end

    def draw
        @cards.shift
    end

    def shuffle
        @cards.shuffle!
    end

    end



end
