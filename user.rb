require "pry"
require "colorize"
require "colorized_string"
require "sounder"
require_relative "user"
require_relative "rockpaperscissors"
require_relative "roulette"
require_relative "spin"
require_relative "dice"


class User
  attr_accessor :name, :age, :wallet
  def initialize(name: , age: , wallet: )
    @name = name
    @age = age
    @wallet = wallet
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
    Menu.new
  end

end


class Wallet
  def initialize()
    @wallet 
  end
end
Wallet.new
