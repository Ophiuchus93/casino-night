require "pry"

class NumberSpin
  def initialize
    spin_wheel
  end
  
  def spin_wheel
    puts "Place your Bet"
    print ">$"
    @user_bet = gets.to_i 
    puts "Pick a number between 0-36"
    pick = gets.to_i

    spin = rand(0..36)
    if pick == spin
      puts "You Win"
      money_difference = @wallet.to_i + @user_bet.to_i
      @wallet = money_difference
      sleep(2)
      puts "Would you like to play again?"
      puts "1) Yes"
      puts "2) No"
      print "> "
      choice = gets.to_i
      case choice
      when 1
        puts `clear`
    
        puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_magenta)
        puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:magenta)
        puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_blue)
        puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:blue)
        puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_cyan)
        puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:cyan)
        puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_green)
        puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:green)

        NumberSpin.new
      when 2
        Roulette.new
      end
    else
      puts "You lose D:"
      money_difference = @wallet.to_i - @user_bet.to_i
      @wallet = money_difference
      sleep(2)
      puts "Would you like to play again?"
      puts "1) Yes"
      puts "2) No"
      print "> "
      choice = gets.to_i
      case choice
      when 1
        puts `clear`
    
        puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_magenta)
        puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:magenta)
        puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_blue)
        puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:blue)
        puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_cyan)
        puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:cyan)
        puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_green)
        puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:green)

        NumberSpin.new
      when 2
        Roulete.new
      end
    end
  end
end

