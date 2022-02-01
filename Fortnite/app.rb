require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("ilyes")
player2 = HumanPlayer.new("louis")


while player1.life_points > 0 && player2.life_points >0

puts "#{player1.user_name} a #{player1.life_points} points"
puts "#{player2.user_name} a #{player2.life_points} points"

puts "-"*50




player1.attack(player2)
player2.attack(player1)
puts "-"*50
if player2.life_points <= 0
  break
  end



puts "-"*50
end
