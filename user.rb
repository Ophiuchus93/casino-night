require "pry"
require "colorize"
require "colorized_string"
require "sounder"


class User
  attr_accessor :name, :age, :wallet
  def initialize(name, age, wallet)
    @name = name
    @wallet = wallet
    @age = age
  end

end
