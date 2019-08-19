require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"



class Rock_Paper_Scissors 
  def initialize(name, wallet)
    @throw = [
      "rock",
      "paper",
      "scissors"
    ]
    @user_throw 
    @user_bet 
    @wallet = wallet
    @name = name
    menu()
  end
  def menu()
    puts "---Welcome to Stones-Mashed Trees-Twin Blades---".colorize(:red)
    puts "You have $#{@wallet}".colorize(:green)
    puts "1) Get Ready To Show Down".colorize(:green)
    puts "2) Run Away to the Main Menu".colorize(:green)
    print ">".colorize(:green)
    @rpschoice = gets.to_i
    rpsgame()
  end  
    def rpsgame()
      if @rpschoice == 1
        puts "Place your Bet".colorize(:cyan)
        print ">$".colorize(:cyan)
        @user_bet = gets.to_i 
        if @user_bet > @wallet
          puts "You do not have enough money to make that bet"
          menu()
        end
        sleep (1)
        puts "Get ready to throw!".colorize(:blue)
        puts " Throw in 3..".colorize(:blue)
        sleep (1)
        puts "2..".colorize(:blue)
        sleep(1)
        puts "1..".colorize(:blue)
        sleep(1)
        puts "Throw!!".colorize(:blue)
        print "> ".colorize(:blue)
        @user_throw = gets.strip
        pc_throw = @throw.sample
        puts pc_throw
        if @user_throw.downcase == "rock" && pc_throw == "rock"
          puts " It's a tie!".colorize(:yellow)
          sleep(1)
          menu()
        elsif @user_throw.downcase == "rock" && pc_throw == "scissors"
          puts "You lose!".colorize(:red)
          sleep(1)
          @temp_difference = @wallet - @user_bet
          @wallet = @temp_difference
          menu()
          # lose method
        elsif @user_throw.downcase == "rock" && pc_throw == "paper"
          puts "You win!".colorize(:green)
          sleep(1)
          @temp_difference = @wallet + @user_bet
          @wallet = @temp_difference 
          menu()
        elsif @user_throw.downcase == "scissors" && pc_throw == "scissors"
          puts "It's a tie!".colorize(:yellow)
          sleep(1)
          menu()
        elsif @user_throw.downcase == "scissors" && pc_throw == "rock"   
          puts "You lose!".colorize(:red)
          sleep(1)
          @temp_difference = @wallet - @user_bet
          @wallet = @temp_difference
          menu()
        elsif @user_throw.downcase == "scissors" && pc_throw == "paper"
          puts "You win!".colorize(:green)
          sleep(1)
          @temp_difference = @wallet + @user_bet
          @wallet = @temp_difference 
          menu()
        elsif @user_throw.downcase == "paper" && pc_throw == "paper"    
          puts "It's a tie!".colorize(:yellow)
          sleep(1)
          menu()
        elsif @user_throw.downcase == "paper" && pc_throw == "scissors"
          puts "You lose!".colorize(:red)
          sleep(1)
          @temp_difference = @wallet - @user_bet
          @wallet = @temp_difference
          menu()
        elsif @user_throw.downcase == "paper" && pc_throw == "rock"  
          puts "You win!".colorize(:green)
          sleep(1) 
          @temp_difference = @wallet + @user_bet
          @wallet = @temp_difference 
          menu()    
         end  
        else  
        puts "Please come again!".colorize(:green)
        Menu.new(@name, @wallet)

        # def win
        # end
        # def tie
        # end
        # def lose
        # end
    
    end
  end
end
# Rock_Paper_Scissors.new



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