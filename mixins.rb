module M1
  def a1
    puts "M1 a1"
  end
  def a2
    puts "M1 a2"
  end
  def greet
    puts "Greet M1"
  end
end

module M2
  def b1
    puts "M2 b1"
  end
  def b2
    puts "M2 b2"
  end
  def greet
    puts "Greet M2"
  end
end

=begin
  if included two modules m1 and m2 the ancestor array would be
    [class,m2,m1]
    for prepend
      [m2,m1,class]
    in include if class and modules have same function function from the class will be called
    But in case of extend the function from the module will be called
=end

class Mixins
  prepend M1
  include M2
  def greet
    puts "Greet class"
  end
end

m = Mixins.new
m.a1
m.a2
m.b1
m.b2
m.greet # will print greet m2
