require "pry"
require "colorize"
require "colorized_string"
# require_relative "user"

class Rock_Paper_Scissors 
  def initialize()
    @throw = [
      "rock",
      "paper",
      "scissors"
    ]

    @user_throw 
    @user_bet 
    menu
  end
  def menu()
    puts "---Welcome to Stones-Mashed Trees-Twin Blades---"
    puts "1) Get Ready To Show Down"
    puts "2) Run Away to the Main Menu"
    print ">"
    @rpschoice = gets.to_i
    rpsgame
  end  
    def rpsgame()
      if @rpschoice == 1
        puts "Place your Bet"
        print ">$"
        @user_bet = gets.to_i 
        sleep (1)
        puts "Get ready to throw!"
        puts " Throw in 3.."
        sleep (1)
        puts "2.."
        sleep(1)
        puts "1.."
        sleep(1)
        puts "Throw!!"
        print "> "
        @user_throw = gets.strip
        pc_throw = @throw.sample
        puts pc_throw
        if @user_throw.downcase == "rock" && pc_throw == "rock"
          puts " It's a tie!"
          rpsgame
        elsif @user_throw.downcase == "rock" && pc_throw == "scissors"
          puts "You lose!"
        elsif @user_throw.downcase == "rock" && pc_throw == "paper"
          puts "You win!" 
        elsif @user_throw.downcase == "scissors" && pc_throw == "scissors"
          puts "It's a tie!"
          rpsgame
        elsif @user_throw.downcase = scissors && pc_throw = rock   
          puts "You lose!"
        elsif @user_throw.downcase == "scissors" && pc_throw == "paper"
          puts "You win!"
        elsif @user_throw.downcase == "paper" && pc_throw == "paper"    
          puts "It's a tie!"
          rpsgame
        elsif @user_throw.downcase = paper && pc_throw = scissors
          puts "You lose!"
        elsif @user_throw.downcase = paper && pc_throw = rock  
          puts "You win!"         
        
        end  
        else  
        puts "You Lost"
        exit
    
    end
  end
end
Rock_Paper_Scissors.new



# rock > scissors
# rock < paper
# scissors > paper
# scissors < rock
# paper > rock
# paper < scissors


# require "pry"
# require "colorize"
# require "colorized_string"
# require_relative "user" 

# class Rock_Paper_Scissors 
#   def initialize
#     @throw = [
#       "Rock",
#       "Paper",
#       "Scissors"
#     ]
#     $player_count = 0
#     $computer_count = 0
#     @user_throw = []
#     @user_bet = []
#     @rock = "rock"
#     @scissors = "scissors"
#     @paper = "paper"
#     @throw = "computer"
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
#       puts "What's your throw?"
#       print ">"
#       @user_throw = gets.strip
     
#       # else
#       #   @rock < @paper
#       # end
#     when 2 
#       puts "You Lost"
#       exit
#     end
#   end
# end
# Rock_Paper_Scissors.new