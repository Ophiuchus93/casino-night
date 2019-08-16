require "pry"

class Spin
  def initialize
    spin_wheel
  end
  
  def spin_wheel
    puts "Pick a number between 0-36"
    pick = gets.to_i

    spin = rand(0..36)
    if pick == spin
      puts "You Win"
    else
      puts "You lose D:"
      sleep(2)
      puts "Would you like to play again?"
      puts "1) Yes"
      puts "2) No"
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

        Spin.new
      when 2
        exit #Main Menu
      end
    end
  end
end

