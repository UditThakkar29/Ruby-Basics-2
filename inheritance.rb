class A

  def initialize
    puts "Super class"
  end

  def method
    puts "super method"
  end

end

class B < A

  def initialize
    puts "Sub Class"
  end

  def method
    puts "super method in sub class"
  end

end


A.new
b = B.new
b.method()
