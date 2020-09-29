
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
    # returns a card
  end

  def shuffle
    # shuffles the deck
  end
end
