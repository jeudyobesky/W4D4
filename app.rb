require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/show'
require_relative 'lib/containercase'
first = Game.new
first.go
first.turn

