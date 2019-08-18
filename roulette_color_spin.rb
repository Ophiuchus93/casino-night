class ColorSpin
  def initialize
    @color_selection = [
      "black",
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "black", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "red", 
      "green"
  ]
  pick_color
  end

  def pick_color
    puts "Pick a color to bet on: Black, Red, or Green"
    print "> "
    answer = gets.strip.downcase
    if answer == @color_selection.sample 
      puts "You win" 
    else
      puts "You lose"
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

        ColorSpin.new
      when 2
        exit #Main Menu
      end
    end
  end
end

# ColorSpin.new
