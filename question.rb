class Question
  attr_reader :int1 
  attr_reader :int2

  def initialize
    @int1 = rand(1..20) 
    @int2 = rand(1..20)
  end

  def to_string
    return "What does #{@int1} plus #{@int2} equal?"
  end

  def check_answer(input)
    if input == @int1 + @int2
      return true
    else 
      return false
    end
  end
  
end