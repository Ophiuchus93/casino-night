class ColorSpin
  def initialize(name, wallet)
    @name = name
    @wallet = wallet
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
      @temp_difference = @wallet + @user_bet
      @wallet = @temp_difference 
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

        pick_color()
      when 2
        Roulette.new(@name, @wallet)
      end
    else
      puts "You lose"
      @temp_difference = @wallet - @user_bet
      @wallet = @temp_difference
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

        pick_color()
      when 2
        Roulette.new(@name, @wallet)
      end
    end
  end
end

# ColorSpin.new
