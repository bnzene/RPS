class Computer

  attr_reader :move

  def move
    @move = ["Rock", "Paper", "Scissors"].sample
  end

end
