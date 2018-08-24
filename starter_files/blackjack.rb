puts "TODO Implement the game of blackjack."

# Hint: for starters, read bin/blackjack.rb

require_relative "card"
require_relative "deck"

class BlackjackGame 

    attr_accessor :shoe, :player_hand, :dealer_hand, :player_hand_value, :dealer_hand_value, :wallet, :bet
    
    def initialize (player, dealer)
       @shoe = Deck.new.shuffle   
       @player_hand = []
       @dealer_hand = []
       @player_hand_value = 0
       @dealer_hand_value = 0
       @wallet = 100  
    end

    def intro
      puts "Hello and welcome to the game of blackjack! Let's begin. You have $100 and bet $10."
    end

    def deal_cards
        @shoe.deal(num)
    end

    def deal_player
      @player_hand = []
      2.times {player_hand << self.deal_cards}
    end

    def deal_dealer
      @dealer_hand = []
      2.times {dealer_hand << self.deal_cards}
    end

    def player_hand_value
      @player_hand_value = 0
      self.deal_player.value

    end
    
    # def dealer_hand_value

    # end

    # def wallet_balance

    # end

    # def bet
    #   @bet = 10
    # end 
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