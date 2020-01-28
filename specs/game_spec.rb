require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_rock_wins
    assert_equal("Rock Wins! Well Done Player1", Game.play("rock", "scissors"))
  end

  def test_rock_wins__reverse
    assert_equal("Rock Wins! Well Done Player2", Game.play("scissors", "rock"))
  end

  def test_paper_wins
    assert_equal("Paper Wins! Well Done Player1", Game.play("paper", "rock"))
  end

  def test_paper_wins__reverse
    assert_equal("Paper Wins! Well Done Player 2", Game.play("rock", "paper"))
  end

  def test_scissors_wins
    assert_equal("Scissors Wins! Well Done Player 1", Game.play("scissors", "paper"))
  end

  def test_scissors_wins__reverse
    assert_equal("Scissors Wins! Well Done Player 2", Game.play("paper", "scissors"))
  end

  def test_tie__rock
    assert_equal("Its a tie!", Game.play("rock", "rock"))
  end

  def test_tie__paper
    assert_equal("Its a tie!", Game.play("paper", "paper"))
  end

  def test_tie__scissors
    assert_equal("Its a tie!", Game.play("scissors", "scissors"))
  end

end
