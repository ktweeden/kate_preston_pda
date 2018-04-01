require_relative 'card'
require_relative 'testing_test_2.rb'
require 'minitest/autorun'

class TestCard < MiniTest::Test

  def setup
    @card_ace = Card.new('Clubs', 1)
    @card_ten = Card.new('Hearts', 10)
    @cards = [@card_ace, @card_ten]
    @card_game = CardGame.new
  end

  def test_check_for_ace__true
    assert_equal(true, @card_game.check_for_ace(@card_ace))
  end

  def test_check_for_ace__false
    assert_equal(false, @card_game.check_for_ace(@card_ten))
  end

  def test_highest_card
    assert_equal(@card_ten, @card_game.highest_card(@card_ten, @card_ace))
  end

  def test_card_total
    assert_equal("You have a total of 11", CardGame.cards_total(@cards))
  end
end
