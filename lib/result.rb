class Result

  def initialize(move1, move2)
    winner(move1, move2)
  end

  def winner(move1, move2)
    if move1 == move2
      "Draw"
    else
      hierarchy = [["Paper", "Rock"], ["Rock", "Scissors"], ["Scissors", "Paper"]]
      hierarchy.include?([move1, move2]) ? "Player" : "Computer"
    end
  end

end
