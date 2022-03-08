require './Player'
require './Question'
require './Turn.rb'
require './Message'
require './Game'

player1 = Player.new("Player 1")
question1 = Question.new

player2 = Player.new("Player 2")


turn = Turn.new(player1, question1)

game = Game.new(player1, player2, turn)
puts game.play
