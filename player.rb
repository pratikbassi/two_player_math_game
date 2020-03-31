class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(id)
    @name = id
    @lives = 3
  end

  def to_string()
    return "Player#{@name}: #{@lives}/3"
  end
end