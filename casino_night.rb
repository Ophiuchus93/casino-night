require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"

class Menu
  def initialize(name, wallet)
    @name = name
    @age
    @wallet = wallet
    main_menu()
  end
  def init_user()
    puts "Welcome to our Casino! What is your name?"
    print "> "
    @name = gets.strip
    puts "Hello #{@name}, how old are you?"
    print "> "
    @age = gets.to_i
    if @age < 21 
      puts "I'm sorry, but you must be at least 21 to participate"
      exit
    else 
      puts "Wonderful! How much did you bring to bet tonight?"
      print ">$"
      @wallet = gets.to_i
    end
    Wallet.new(@name, @age, @wallet)
    main_menu()
  end
  def main_menu()
    puts " ▄████████    ▄████████    ▄████████  ▄█   ███▄▄▄▄    ▄██████▄  ".colorize(:color => :magenta, :background => :black)  
    puts " ███    ███   ███    ███   ███    ███ ███  ███▀▀▀██▄ ███    ███ ".colorize(:color => :red, :background => :black)
    puts " ███    █▀    ███    ███   ███    █▀  ███▌ ███   ███ ███    ███ ".colorize(:color => :orange, :background => :black)
    puts " ███          ███    ███   ███        ███▌ ███   ███ ███    ███ ".colorize(:color => :yellow, :background => :black) 
    puts " ███        ▀███████████ ▀███████████ ███▌ ███   ███ ███    ███ ".colorize(:color => :green, :background => :black)
    puts " ███    █▄    ███    ███          ███ ███  ███   ███ ███    ███ ".colorize(:color => :cyan, :background => :black)
    puts " ███    ███   ███    ███    ▄█    ███ ███  ███   ███ ███    ███ ".colorize(:color => :blue, :background => :black)
    puts " ████████▀    ███    █▀   ▄████████▀  █▀    ▀█   █▀   ▀██████▀  ".colorize(:color => :white, :background => :black)                                                               
    puts "What would you like to do?"
    puts "1) Roulette"
    puts "2) Rock-Paper-Scissors"
    puts "3) Dice"
    puts "4) Create new user"
    puts "5) Check available funds"
    puts "6) Exit"
    print "> "
    main_select = gets.to_i
    case main_select
    when main_select = 1
      Roulette.new(@name, @wallet)
    when main_select = 2
      Rock_Paper_Scissors.new(@name, @wallet)
    when main_select = 3
      Dice.new(@name, @wallet)
    when main_select = 4
      init_user()
    when main_select = 5
      puts "You have $#{@wallet} available."
      sleep(3)
      main_menu()
    when main_select = 6
      puts "Thanks for playing!"
      exit
    else
      puts "That is not an option. Please try again."
      main_menu()
    end
  end

end









Menu.new("Hobo", 0)
