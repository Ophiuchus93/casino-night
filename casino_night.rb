require "pry"
require "colorize"
require "colorized_string"
require "sounder"



class Menu
  attr_accessor :name, :age, :wallet
  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet

    welcome()
  end
  def welcome()
    puts "Welcome to our Casino! What is your name?"
    print "> "
    @name = gets.strip
    puts "Hello #{@user}, how old are you?"
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

end















menu()
