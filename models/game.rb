class Game

  def self.play(object1, object2)
    if object1 == "rock" && object2 == "scissors"
      return "Rock Wins! Well Done Player1"
    elsif object1 == "scissors" && object2 == "paper"
      return "Scissors Wins! Well Done Player1!"
    elsif object1 == "paper" && object2 == "rock"
      return "Paper Wins! Well Done Player1"
    elsif object1 == "scissors" && object2 == "rock"
      return "Rock Wins! Well Done Player2"
    elsif object1 == "paper" && object2 == "scissors"
      return "Scissors Wins! Well Done Player2"
    elsif object1 == "rock" && object2 == "paper"
      return "Paper Wins! Well Done Player2"
    else
      return "Its a tie!"
    end
  end
end
