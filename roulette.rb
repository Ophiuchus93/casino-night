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
  def initialize(name, wallet)
    # @wheel = wheel
    @name = name
    @wallet = wallet
    @user_bet = 5
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

sleep(0.1)
puts `clear`

puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:magenta)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_blue)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:blue)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_cyan)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:cyan)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_green)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:green)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_magenta)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_blue)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:blue)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_cyan)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:cyan)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_green)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:green)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_magenta)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:magenta)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:blue)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_cyan)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:cyan)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_green)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:green)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_magenta)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:magenta)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_blue)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_cyan)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:cyan)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_green)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:green)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_magenta)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:magenta)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_blue)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:blue)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:cyan)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_green)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:green)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_magenta)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:magenta)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_blue)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:blue)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_cyan)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_green)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:green)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_magenta)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:magenta)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_blue)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:blue)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_cyan)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:cyan)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:green)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_magenta)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:magenta)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_blue)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:blue)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_cyan)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:cyan)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_green)

sleep(0.1)
puts `clear`

puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_magenta)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:magenta)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_blue)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:blue)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_cyan)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:cyan)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_green)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:green)

sleep(0.1)
puts `clear`

puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:magenta)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_blue)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:blue)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_cyan)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:cyan)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_green)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:green)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_magenta)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_blue)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:blue)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_cyan)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:cyan)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_green)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:green)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_magenta)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:magenta)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:blue)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_cyan)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:cyan)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_green)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:green)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_magenta)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:magenta)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_blue)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_cyan)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:cyan)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_green)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:green)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_magenta)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:magenta)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_blue)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:blue)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:cyan)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_green)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:green)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_magenta)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:magenta)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_blue)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:blue)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_cyan)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:light_green)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:green)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:light_magenta)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:magenta)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:light_blue)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:blue)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:light_cyan)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:cyan)

sleep(0.1)
puts `clear`


puts "-----------    --------   ----    ---- ----         ------------ ------------ ------------ ------------ ".colorize(:green)
puts "***********   **********  ****    **** ****         ************ ************ ************ ************ ".colorize(:light_magenta)
puts "----    ---  ----    ---- ----    ---- ----         ----         ------------ ------------ ----         ".colorize(:magenta)
puts "*********    ***      *** ****    **** ****         ************     ****         ****     ************ ".colorize(:light_blue)
puts "---------    ---      --- ----    ---- ----         ------------     ----         ----     ------------ ".colorize(:blue)
puts "****  ****   ****    **** ************ ************ ****             ****         ****     ****         ".colorize(:light_cyan)
puts "----   ----   ----------  ------------ ------------ ------------     ----         ----     ------------ ".colorize(:cyan)
puts "****    ****   ********   ************ ************ ************     ****         ****     ************ ".colorize(:light_green)

sleep(0.1)
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
    puts "Player cash: $#{@wallet} Current bet amount: $#{@user_bet}"
    puts "1) Take a spin and guess the number"
    puts "2) Take a spin and guess the color"
    puts "3) Leave"
    print "> "
    choice = gets.to_i
    case choice
      when 1 
        NumberSpin.new(@name, @wallet)
      when 2
        ColorSpin.new(@name, @wallet)
      when 3
        puts `clear`
        Menu.new(@name, @wallet)
      else
        puts "Please pick one of the shown options"
        sleep(2)
        `clear`
        menu
      end
  end
end


# Roulette.new
