require './human_player'
require './board'
require './computer_player'
require './game'
require 'pry'

puts "How many players would you like to play with? 0, 1 or 2?"
players = gets.chomp.to_i
until (0..2).include?(players)
  puts "I told you to pick a number 0 - 2"
  puts "I said pick it!"
  players = gets.chomp.to_i
end

case players 
  when 0 
    game = Game.new(ComputerPlayer.new, ComputerPlayer.new, Board.new)
  when 1
    game = Game.new(HumanPlayer.new, ComputerPlayer.new, Board.new)
  when 2
    game = Game.new(HumanPlayer.new, HumanPlayer.new, Board.new)
end

game.play_the_game


  puts "Would you like to play again? Please press Y or n:"
  play = gets.chomp.upcase
  puts "\n\n\n"

  until ("Y" "N").include?(play)
    puts "Seriously, would you like to play again? Just select Y or N:"
    play = gets.chomp.upcase
  end

  if play == "Y"
    puts "Ok, here we go!"
    puts "\n"
    sleep(2)
    game.new_game
    game.play_the_game
  else
    play = "N"
    puts "See ya later!"
  end
  play