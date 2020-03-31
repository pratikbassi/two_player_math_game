class Turn
  def initialize(player1, question)
      @player1 = player1
      @question = question
  end

  def play_turn
    if @player1.lives > 0
      return "#{@player1.name}: #{@question.to_string}"
    end
  end

  def take_answer(input)
    
    if @question.check_answer(input) == true
      return "Yes! #{input} is correct!"
    else 
      @player1.lives = @player1.lives - 1

      if @player1.lives == 0
        return "Player #{@player1.name} has lost!"
      else 
        return "No! #{@question.int1 + @question.int2} is correct!"
      end
    end
  end


end