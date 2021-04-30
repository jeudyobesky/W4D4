require 'bundler'
Bundler.require

class Board
  attr_accessor :array_board, :player_choice, :case_value, :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :status
  @@array_board = []

  
  def initialize
    @a1 = " "
    @a2 = " " 
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
    board_case1 = BoardCase.new
    board_case2 = BoardCase.new
    board_case3 = BoardCase.new
    board_case4 = BoardCase.new
    board_case5 = BoardCase.new
    board_case6 = BoardCase.new
    board_case7 = BoardCase.new
    board_case8 = BoardCase.new
    board_case9 = BoardCase.new
    @@array_board = [[board_case1, board_case2, board_case3], [board_case4, board_case5, board_case6], [board_case7, board_case8, board_case9]]
    puts "C'est parti !!"
    container_case = ContainerCase.new
    status = "en cours"
  end

  def play_turn
          puts "> Player 1 quelle case souhaite tu remplir?"
          puts " "
          user1_choice = gets.chomp
              if user1_choice == "a"
                    @a1 = "X"
              elsif user1_choice == "d" 
                    @a2 = "X"
              elsif user1_choice == "g"
                    @a3 = "X"
              elsif user1_choice == "b"
                    @b1 = "X"
              elsif user1_choice == "e"
                    @b2 = "X"
              elsif user1_choice == "h"
                    @b3 = "X"
              elsif user1_choice == "c"
                    @c1 = "X"
              elsif user1_choice == "f"
                    @c2 = "X"
              elsif user1_choice == "i"
                    @c3 = "X"
              end
  end

def play_turn2
    puts "> Player 2 quelle case souhaite tu remplir?"
    user2_choice = gets.chomp
          if user2_choice == "a"
                        @a1 = "O"
          elsif user2_choice == "d" 
                        @a2 = "O"
          elsif user2_choice == "g"
                        @a3 = "O"
          elsif user2_choice == "b"
                        @b1 = "O"
          elsif user2_choice == "e"
                        @b2 = "O"
          elsif user2_choice == "h"
                        @b3 = "O"
          elsif user2_choice == "c"
                        @c1 = "O"
          elsif user2_choice == "f"
                        @c2 = "O"
           elsif user2_choice == "i"
                        @c3 = "O"
          end
  end
  def container_show
    puts " _____ _____ _____ "
    puts "|     |     |     |"
    puts "|  #{a1}  |  #{b1}  |  #{c3}  |"    
    puts "|a____|b____|c____|"
    puts "|     |     |     |"
    puts "|  #{a2}  |  #{b2}  |  #{c2}  |"
    puts "|d____|e____|f____|"
    puts "|     |     |     |"
    puts "|  #{a3}  |  #{b3}  |  #{c3}  |"
    puts "|g____|h____|i____|"
    if ((a1 && a2 && a3) == "X") || ((a1 && a2 && a3) == "O")
      @status = "Victoire"
    elsif ((b1 && b2 && b3) == "X") || ((b1 && b2 && b3) == "O")
      @status = "Victoire"
    elsif ((c1 && c2 && c3) == "X") || ((c1 && c2 && c3) == "O")
      @status = "Victoire"
    elsif ((a1 && b1 && c1 ) == "X") || ((a1 && b1 && c1 ) == "0")
      @status = "Victoire"
    elsif ((a2 && b2 && c2 ) == "X") || ((a2 && b2 && c2 ) == "0")
      @status = "Victoire"
    elsif ((a3 && b3 && c3 ) == "X") || ((a3 && b3 && c3 ) == "0")
      @status = "Victoire"
    elsif ((a1 && b2 && c3 ) == "X") || ((a1 && b2 && c3 ) == "0")
      @status = "Victoire"
    else
    end
  end
 def victory?
    @status = status
      if ((a1 && a2 && a3) == "X") || ((a1 && a2 && a3) == "O")
        @status = "Victoire"
      elsif ((b1 && b2 && b3) == "X") || ((b1 && b2 && b3) == "O")
        @status = "Victoire"
      elsif ((c1 && c2 && c3) == "X") || ((c1 && c2 && c3) == "O")
        @status = "Victoire"
      elsif ((a1 && b1 && c1 ) == "X") || ((a1 && b1 && c1 ) == "0")
        @status = "Victoire"
      elsif ((a2 && b2 && c2 ) == "X") || ((a2 && b2 && c2 ) == "0")
        @status = "Victoire"
      elsif ((a3 && b3 && c3 ) == "X") || ((a3 && b3 && c3 ) == "0")
        @status = "Victoire"
      elsif ((a1 && b2 && c3 ) == "X") || ((a1 && b2 && c3 ) == "0")
        @status = "Victoire"
      else
      end
      return @status
  end


end