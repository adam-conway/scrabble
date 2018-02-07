gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_initializes
    game = Scrabble.new

    assert_instance_of Scrabble, game
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score('a')
    assert_equal 4, Scrabble.new.score('f')
  end

  def test_scoring_works_with_empty_string
    assert_equal 0, Scrabble.new.score('')
  end

  def test_score_works_with_nil
    assert_equal 0, Scrabble.new.score(nil)
  end
end
