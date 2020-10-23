# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    suits = [:hearts, :spades, :clubs, :diamonds]
    if @value < 1 || @value > 13
      raise ArgumentError.new("Invalid value")
    elsif !(suits.include?(@suit))
      raise ArgumentError.new("Invalid suit.")
    end
  end

  def to_s
    face_card_values = {
        1 => 'Ace',
        11 => 'Jack',
        12 => 'Queen',
        13 => 'King'
    }

    if face_card_values[value].nil?
      face_card_values[value] = value
    end

    return "#{face_card_values[value]} of #{suit.to_s}"
  end
end
