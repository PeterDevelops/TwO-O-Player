require "./Player.rb"
require "./Question.rb"

class Game
  attr_reader :current_player
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  # switches whoever the current player is
  def switch_turns
  @current_player = @current_player == @player1 ? @player2 : @player1
  end

  # checks lives of both players
  def check_game_over?
    # returns true if either of these are 0
    @player1.lives < 1 || @player2.lives < 1
  end

  # announce whoever the winner is
  def announce_winner

    if @player1.lives > 0
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    else
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    end
    puts "---- Game Over -----"
    puts "Good bye!"
  end

  def display_game_status
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

end