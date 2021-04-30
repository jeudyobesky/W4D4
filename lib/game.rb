require 'bundler'
Bundler.require

class Game 
  attr_accessor :name, :status, :board, :containercase, :case_value, :game_status
  def initialize
    puts ">PLAYER 1 NAME: ?"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name,"X")
    puts ">PLAYER 2 NAME: ?"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name,"O")
    @board = Board.new
  end

  def go
    puts "Bienvenue :), prêt à jouer ?"
    puts "Appuie sur Entrer ..."
    gets.chomp
  end
  def turn
    game_status ="en cours"
    while game_status == "en cours"
    @board.container_show
    @board.play_turn
    @board.victory?
    @board.container_show
    @board.play_turn2
    @board.victory?
    @board.container_show
    end
  end

  
  def game_end
  end
end 