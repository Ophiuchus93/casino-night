require "colorize"
require "pry"

class Dice
  
  def initialize
    
    dice_menu
  
  end

  def dice_menu
      puts " --- Welcome ---".colorize(:green)
      sleep(1)
      puts "- Take Your Guess -".colorize(:green)
      puts " -- e to exit --".colorize(:red)

      roll

      guess = gets.to_i

      show_dice
      show_sum
      # binding.pry
      if guess == @rr
        puts "$$ WINNER $$".colorize(:yellow)
        sleep(2)
        print `clear`
        dice_menu
        
      

      else
        # binding.pry
        puts "Aww :(".colorize(:red)
        puts "Try Again".colorize(:red)
        puts ""
        puts ""
        dice_menu
        
      end
      
       
    end

  

  def roll
    @die1 = 1 + rand(6)
    @die2 = 1 + rand(6) 
    @rr = @die1 + @die2
  end
  
  def show_dice
    puts "Die 1: ", @die1, "Die 2:", @die2
    
  end
  
  def show_sum
    puts "Sum of dice is ", @die1 + @die2, ".\n"
  end 

  
end

Dice.new
 




