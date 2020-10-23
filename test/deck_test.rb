require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
    describe "A deck holds 52 valid cards" do
      it "can be instantiated" do
        deck = Deck.new

        expect(deck).must_be_instance_of Deck
      end
    end

  describe "test that draw removes cards from the deck and returns a hand" do
    it "draws and returns a card" do
      deck = Deck.new

      drawn_card = deck.draw

      expect(deck.cards.length).must_equal 51
      expect(drawn_card).must_be_instance_of Card
    end
  end

  describe "test that count returns the hand back into the deck" do
    it "shuffles the deck" do
      deck = Deck.new
      first_card = deck.cards.first

      deck.shuffle

      expect(deck.cards.first).wont_equal first_card
    end

    it "counts 52 cards" do
      deck = Deck.new

      deck.count

      expect(deck.cards.count).must_equal 52
    end

    it "counts 51 cards in the deck" do
    deck = Deck.new

    deck.draw

    expect(deck.cards.count).must_equal 51
    end
  end
end
