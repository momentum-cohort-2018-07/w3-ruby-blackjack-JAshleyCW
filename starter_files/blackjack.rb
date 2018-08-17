puts "TODO Implement the game of blackjack."

# Hint: for starters, read bin/blackjack.rb

require_relative "card"
require_relative "deck"

class BlackjackGame 

    attr_accessor :hand, :hand_value, :wallet, :shoe
    def initialize 
        #need a player
        @hand = []
        @hand_value = hand_value
        #need a wallet
        @wallet = wallet(100)
        @shoe = Deck.new
        @shoe.shuffle
        @dealer = []
    end
end

#need a function for 'hit' 
#need a function for 'stand'
#bets are $10
#player shld be able to keep playing until they are out of money
#need to be able to count the money in the players hand
#dealer has one deck in their shoe
#dealer shuffles after each round
#remember, computer is the dealer!
#need to tell dealer to shuffle after each ROUND

#use 'gets' method to get input from player (README)