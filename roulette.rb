require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"
require_relative "roulette_color_spin"




class Roulette
  def initialize
    # @wheel = wheel
    roulette_menu
  end

  def roulette_menu
    
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
    puts "1) Take a spin and guess the number"
    puts "2) Take a spin and guess the color"
    puts "2) Leave"
    print "> "
    choice = gets.to_i
    case choice
      when 1 
        NumberSpin.new
      when 2
        ColorSpin.new
      when 3
        puts `clear`
        Menu.new
      else
        puts "Please pick one of the shown options"
        sleep(2)
        `clear`
        menu
      end
  end
end


Roulette.new
