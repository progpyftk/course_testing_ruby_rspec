# The describe method creates an example group. 
# Within the block passed to
# describe you can declare nested groups using the describe or context
# methods, or you can declare examples using the it or specify methods.

class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end
end

# aprendizado
# pq let é melhor que o before? imagine se tivessemos 100 examplos, e apenas 5 usassem card
# neste caso com let apenas 5 objs do tipo card seriam criados, enquanto que no before seriam
# criados 100, 95 inuteis



RSpec.describe Card do
    # let will be evaluated, that is, a new card will be created for each example that card is called
    let(:card) { Card.new('Ace', 'Spades') } # :card is the variable that will be created, and it means Card.new('Ace', 'Spades')

    it 'has a rank' do
        expect(card.rank).to eq('Ace') # the first time we create card it will be same obj over the example
        card.rank = 'Queen'            # it does not create a new card, it is the same
        expect(card.rank).to eq('Queen')
    end
    
    it 'has a suit' do
        expect(card.suit).to eq('Spades')
    end

    it 'has a custom error message' do
        comparison = 'Spades'
        expect(card.suit).to eq(comparison), "Hey, I expect #{comparison}, but i got #{card.suit}"
    end
end



