
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

  # def assigning_facecard_values(face_cards, value)
  #   case face_cards
  #   when 1
  #     return "Ace"
  #   when 11
  #     return "Jack"
  #   when 12
  #     return "Queen"
  #   when 13
  #     return "King"
  #   else
  #     return value
  #   end
  # end

  def to_s
    case
    when value == 1
      return "Ace of #{@suit}"
    when value == 11
      return "Jack of #{@suit}"
    when value == 12
      return "Queen of #{@suit}"
    when value == 13
      return "King of #{@suit}"
    else
      return "#{@value} of #{@suit.to_s}"
    end

    #Right now, the value is not recognizing that 1 = Ace, 11 = Jack, 12 = Queen, 13 = King
    # How can i modify this method to assign these values to these faces?
    # How will a helper method work for this? case/when?
  end
end

card = Card.new(3, :hearts)
p card.value