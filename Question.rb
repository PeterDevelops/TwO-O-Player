class Question
  attr_accessor :answer
  def initialize(current_player)
    @random_num1 = rand(1..20)
    @random_num2 = rand(1..20)
    @answer = @random_num1 + @random_num2
    @current_player = current_player
    # @lives = lives
  end

  def random_number_question
   puts "#{@current_player.name}: What does #{@random_num1} plus #{@random_num2} equal?"
end

def lose_life(current_player)
  if current_player.lives >= 1
    current_player.lives -= 1
  end
end

  def correct?(player_answer)
    player_answer == @answer
  end
  
end