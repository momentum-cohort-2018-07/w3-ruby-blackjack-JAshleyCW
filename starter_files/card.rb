class Card

    attr_accessor :rank, :suit, :value

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def output_card
        puts "The #{@rank} of #{@suit}"
    end

    def value
        @value = case @rank
        when :A
            1
        when 2..10
            @rank
        when :J
            10
        when :Q
            10
        when :K
            10
        end
    end

    def greater_than?(other_card)
        self.value > other_card.value
    end

    def ==(other_card)
        rank == other_card.rank &&
        suit == other_card.suit
    end


end