# require "pry"
# require "colorize"
# require "colorized_string"
# class Rock_Paper_Scissors 
#   def initialize
#     @throw = [
#       "Rock",
#       "Paper",
#       "Scissors"
#     ]
#     @user_throw = []
#     @user_bet = [] 
#     menu
#   end
#   def menu
#     puts "---Welcome to Stones-Mashed Trees-Twin Blades---"
#     puts "1) Get Ready Show Down"
#     puts "2) Run Away to the Main Menu"
#     print ">"
#     choice = gets.to_i
#     case choice 
#     when 1
#       puts "Place your Bet"
#       print ">$"
#       @user_bet = gets.to_i 
#     when 2 
#       puts "You Lost"
#       exit
#     end
#   end
# end
# Rock_Paper_Scissors.new



# rock > scissors
# rock < paper
# scissors > paper
# scissors < rock
# paper > rock
# paper < scissors

# hello


require "pry"
require "colorize"
require "colorized_string"
class Rock_Paper_Scissors 
  def initialize
    @throw = [
      "Rock",
      "Paper",
      "Scissors"
    ]
    $player_count = 0
    $computer_count = 0
    @user_throw = []
    @user_bet = []
    @rock = "rock"
    @scissors = "scissors"
    @paper = "paper"
    @throw = "computer"
    menu 
  end
  def menu
    puts "---Welcome to Stones-Mashed Trees-Twin Blades---"
    puts "1) Get Ready Show Down"
    puts "2) Run Away to the Main Menu"
    print ">"
    choice = gets.to_i
    case choice 
    when 1
      puts "Place your Bet"
      print ">$"
      @user_bet = gets.to_i 
      puts "What's your throw?"
      print ">"
      @user_throw = gets.strip
      puts @throw.sample
      if @user_throw == @rock && @throw == scissors
      puts "Player chose rock. \nComputer chose scissors."
      puts "Rock beats scissors, player wins the round."
      $player_count += 1
      # else
      #   @rock < @paper
      end
    when 2 
      puts "You Lost"
      exit
    end
  end
end
Rock_Paper_Scissors.new