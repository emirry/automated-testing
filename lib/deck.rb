# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        cards.push(Card.new(value, suit))
      end
    end
  end

  def draw
    card = @cards.pop
    return card
  end

  def shuffle
     @cards.shuffle!
  end
end
