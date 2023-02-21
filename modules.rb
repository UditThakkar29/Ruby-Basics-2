module Trig
  PI = 3.141592

  def sin(x)
    puts "sin of Trig"
  end

  def Trig.cos(x)
  end

end
# Two modules can have same function name

module Test
  def sin(x)
    puts "sin of test"
  end
end

class Maths
  prepend Trig
  prepend Test
  def func
    puts "function in class"
  end
end

puts Trig::PI
m = Maths.new
m.sin(1)
puts Maths.ancestors


module Module1
  class Test
    def initialize
      puts "Class Initialize"
    end
    def class_method
      puts "class method"
    end
  end
end

obj = Module1::Test.new
obj.class_method

module Week
  First_day = "SUnday"
  def Week.week_month
    puts "You have 4"
  end
  def week_year
    puts "You have 52"
  end
end

class Hand
  include Week
  $year = 10

  def no_of_months
    puts "Today " + Week::First_day
    num = $years.to_i * 12
    puts "Months in 10 year" + num.to_s

  end
end

h = Hand.new
puts Week::First_day
Week.week_month
h.no_of_months
