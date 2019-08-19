require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"


class Dice
  def initialize(name, wallet)  
    @user_bet = 5
    @name = name
    @wallet = wallet
    dice_menu()
  end
  def dice_menu
      puts " --- Welcome ---".colorize(:green)
      sleep(1)
      puts "Player cash: $#{@wallet} Current bet amount: $#{@user_bet}".colorize(:blue)
      puts "1. - Take Your Guess -".colorize(:green)
      puts "2. - Set bet amount -".colorize(:green)
      puts "3. -- exit --".colorize(:red)
      puts "> "
      choice = gets.to_i
      roll
      case choice
      when choice = 1
      guess = gets.to_i
      show_dice()
      show_sum()
      if guess == @rr
        puts "$$ WINNER $$".colorize(:yellow)
        sleep(2)
        @temp_difference = @wallet + @user_bet
        @wallet = @temp_difference 
        print `clear`
        dice_menu()
      else
        puts "Aww :(".colorize(:red)
        puts "Try Again".colorize(:red)
        puts ""
        puts ""
        @temp_difference = @wallet - @user_bet
        @wallet = @temp_difference
        dice_menu()
      end
    when choice = 2
      @user_bet = gets.to_i
      dice_menu()
    when choice = 3
      Menu.new(@name, @wallet)
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

# Dice.new
 




