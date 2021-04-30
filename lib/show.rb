class Show
attr_accessor :board, :containercase, :case_value

  def initialize

  end

  def show_container(container)
        puts " _____ _____ _____ ".green
        puts "|     |     |     |".green
        puts "|  #{@a1}  |  #{@b1}  |  #{@c1}  |".green   
        puts "|a____|b____|c____|".green
        puts "|     |     |     |".green
        puts "|  #{@a2}  |  #{@b2}  |  #{@c2}  |".green
        puts "|d____|e____|f____|".green
        puts "|     |     |     |".green
        puts "|  #{@a3}  |  #{@b3}  |  #{@c3}  |".green
        puts "|g____|h____|i____|".green

  end
end