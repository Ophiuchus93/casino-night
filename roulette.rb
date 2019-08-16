require_relative "spin"
# wheel = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,20, 21, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]

class Roulette
  def initialize
    # @wheel = wheel
    menu
  end

  def menu
    puts "--- Welcome to Roulette ---"
    puts "1) Take a spin"
    puts "2) Leave"
    print "> "
    choice = gets.to_i
    case choice
      when 1 
        Spin.new
      when 2
        exit
      when 777
        Cheat.new
      else
        "Please pick one of the shown options"
        sleep(2)
        `clear`
        menu
      end
  end
end 

Roulette.new
