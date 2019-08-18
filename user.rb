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
  attr_accessor :name, :age
  def initialize(name, age)
  @name = name
  @age = age
  end
end

class Wallet 
  attr_accessor :wallet
  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
  end
  def self.wallet
    @wallet
  end
end

