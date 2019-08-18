# Menu
# Ask for user name and age
# if not 21 then they get kicked off
# ask how much money they have (wallet)
# use ASCii images 
# create menu with the different games

require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"

class Menu
  attr_accessor 
  def initialize()
    @name
    @age
    @wallet
    main_menu()
  end
  def main_menu()
    puts ".o0o. CASINO .o0o."
    puts "What game would you like to play?"
    puts "1) Roulette"
    puts "2) Rock-Paper-Scissors"
    puts "3) Dice"
    puts "4) Exit"
    print "> "
    main_select = gets.to_i
    case main_select
    when main_select = 1
      Roulette.new
    when main_select = 2
      Rock_Paper_Scissors.new
    when main_select = 3
      Dice.new
    when main_select = 4
      puts "Thanks for playing!"
      exit
    else
      puts "That is not an option. Please try again."
      main_menu()
    end
  end

end










User.new(name: "bryan", age: 21, wallet: 500)
