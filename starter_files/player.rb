require_relative "card"
require_relative "deck"
require_relative "player"

class Player

    attr_accessor :wallet, :player_hand

  def initialize
    @wallet = 100 
    @player_hand = []
    2.times { @player_hand << @deck.draw }
  end
end 