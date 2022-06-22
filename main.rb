require_relative 'lib/console_interface'
require_relative 'lib/game'

path = File.join(__dir__, 'data', 'words.txt')
word = File.readlines(path, chomp: true).sample

game = Game.new(word)
console_interface = ConsoleInterface.new(game)

until game.over?
  puts console_interface.print_out
  letter = console_interface.get_letter
  game.play!(letter)
end

puts console_interface.print_out
