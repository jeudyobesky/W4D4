class ContainerCase < Board
attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :player1_name
  def initialize
    " _____ _____ _____ "
    "|     |     |     |"
    "|  #{a1}  |  #{b1}  |  #{c3}  |"    
    "|a____|b____|c____|"
    "|     |     |     |"
    "|  #{a2}  |  #{b2}  |  #{c2}  |"
    "|d____|e____|f____|"
    "|     |     |     |"
    "|  #{a3}  |  #{b3}  |  #{c3}  |"
    "|g____|h____|i____|"
    #CREATION DUN CONTENEUR POUR LE MORPION
  end
end
