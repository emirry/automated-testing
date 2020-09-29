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


  # describe "test that draw removes cards from the deck and returns a hand" do
  #
  # end
  #
  # describe "test that count returns the hand back into the deck" do
  #
  # end
end
