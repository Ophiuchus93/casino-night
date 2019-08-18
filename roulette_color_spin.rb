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
    puts "Place your Bet"
    print ">$"
    @user_bet = gets.to_i
    puts "Pick a color to bet on: Black, Red, or Green"
    print "> "
    answer = gets.strip.downcase
    if answer == @color_selection.sample 
      puts "You win" 
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

        ColorSpin.new
      when 2
        Roulette.new
      end
    else
      puts "You lose"
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

        ColorSpin.new
      when 2
        Roulette.new
      end
    end
  end
end

# ColorSpin.new
