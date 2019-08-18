require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"


class Roulette
  def initialize
    # @wheel = wheel
    menu
  end

  def menu
    
    puts `clear`
    
    puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_magenta)
    puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:magenta)
    puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_blue)
    puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:blue)
    puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_cyan)
    puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:cyan)
    puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_green)
    puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:green)


    puts "--- Welcome to Roulette ---"
    puts "1) Take a spin"
    puts "2) Leave"
    print "> "
    choice = gets.to_i
    case choice
      when 1 
        Spin.new
      when 2
        exit #Main Menu
      when 777
        Cheat.new
      else
        puts "Please pick one of the shown options"
        sleep(2)
        `clear`
        menu
      end
  end
end 


# Roulette.new
