require "./Game.rb"
require "./Player.rb"
require "./Question.rb"

game = Game.new

while !game.check_game_over?
  question = Question.new(game.current_player)
  question.random_number_question

  player_answer = gets.chomp.to_i
  
    if question.correct?(player_answer)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      question.lose_life(game.current_player)
    end

  game.display_game_status
  game.switch_turns
  
end

game.announce_winner