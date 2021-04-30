require 'bundler'
Bundler.require

class Player
  attr_reader :case_value, :name
  attr_accessor :status, :player_choice
    
    def initialize (name, case_value="", status ="")
            @name = name
            @case_value = case_value
            @status = status
    end

    def choice
      return @case_value
    end
end