require "pry"

class Spin
  def initialize
    spin_wheel
  end
  
  def spin_wheel
    puts "Pick a number between 0-36"
    pick = gets.to_i

    spin = rand(0..36)
    if pick == spin
      puts "You Win"
    else
      puts "You lose D:"

    end
  end
end

