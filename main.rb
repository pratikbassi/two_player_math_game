require './question'
require './player'
require './turn'

player1 = Player.new(1)
player2 = Player.new(2)


log = 0

while player1.lives > 0 && player2.lives > 0
  new_q = Question.new

  if log % 2 == 0
    new_t = Turn.new(player1, new_q)
  else
    new_t = Turn.new(player2, new_q)
  end


  puts "--------TURN BEGINS--------"

  puts "Player" + new_t.play_turn
  print "Input Here -> "

  input = gets
  input = input.chomp

  puts new_t.take_answer(input.to_i)

  puts player1.to_string + " VS " + player2.to_string
end

puts "-------GAME OVER--------"
if player1.lives > 0
  puts "Winner! " + player1.to_string 
else 
  puts "Winner! " + player2.to_string 
end