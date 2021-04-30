require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/show'

a1 = " "
a2 = " "
a3 = " "
b1 = " "
b2 = " "
b3 = " "
c1 = " "
c2 = " "
c3 = " "


puts "  >Joueur 1 name:"
player1_name = gets.chomp.to_s
player1 = Player.new("#{player1_name}")
puts ""
puts "#{player1_name} sans peur est prêt à en decoudre ! Qui dans la salle a le courage de l'affronter ?"
puts ""
puts "  >Joueur 2 name:"
player2_name = gets.chomp.to_s
player2 = Player.new("#{player2_name}")
puts "Moi, #{player2_name} enfant de Thor me feras un plaisir de te mordre la poussiére !"
puts " FIGHT! "
while ((a1 && a2 && a3) != "X")
  puts " _____ _____ _____ "
  puts "|     |     |     |"
  puts "|  #{a1}  |  #{b1}  |  #{c1}  |"    
  puts "|a____|b____|c____|"
  puts "|     |     |     |"
  puts "|  #{a2}  |  #{b2}  |  #{c2}  |"
  puts "|d____|e____|f____|"
  puts "|     |     |     |"
  puts "|  #{a3}  |  #{b3}  |  #{c3}  |"
  puts "|g____|h____|i____|"
  puts ">#{player1_name} quelle case souhaite tu remplir?"
  puts " "
  user1_choice = gets.chomp
      puts " "
          if user1_choice == "a"
                a1 = "X"
          elsif user1_choice == "d" 
                a2 = "X"
          elsif user1_choice == "g"
                a3 = "X"
          elsif user1_choice == "b"
                b1 = "X"
          elsif user1_choice == "e"
                b2 = "X"
          elsif user1_choice == "h"
                b3 = "X"
          elsif user1_choice == "c"
                c1 = "X"
          elsif user1_choice == "f"
                c2 = "X"
          elsif user1_choice == "i"
                c3 = "X"
          end
puts ">#{player2_name} quelle case souhaite tu remplir?"
  user2_choice = gets.chomp
    puts " "
      if user2_choice == "a"
                    a1 = "O"
              elsif user2_choice == "d" 
                    a2 = "O"
              elsif user2_choice == "g"
                    a3 = "O"
              elsif user2_choice == "b"
                    b1 = "O"
              elsif user2_choice == "e"
                    b2 = "O"
              elsif user2_choice == "h"
                    b3 = "O"
              elsif user2_choice == "c"
                    c1 = "O"
              elsif user2_choice == "f"
                    c2 = "O"
              elsif user2_choice == "i"
                    c3 = "O"
              end
              puts " _____ _____ _____ "
              puts "|     |     |     |"
              puts "|  #{a1}  |  #{b1}  |  #{c1}  |"    
              puts "|a____|b____|c____|"
              puts "|     |     |     |"
              puts "|  #{a2}  |  #{b2}  |  #{c2}  |"
              puts "|d____|e____|f____|"
              puts "|     |     |     |"
              puts "|  #{a3}  |  #{b3}  |  #{c3}  |"
              puts "|g____|h____|i____|"
end
