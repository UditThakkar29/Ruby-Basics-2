class Test
  attr_accessor :marks_obtained, :total_marks
  def initialize(marks_obtained,total_marks)
    @marks_obtained = marks_obtained
    @total_marks = total_marks
  end

  def class_method
    puts "Class Method"
  end

end

t = Test.new(100,100)  # object without any argument
# t.class_method
t1 = Test.new(90,100)  # with argument but no initialize method will give error

# Accessing instance variable without using attr_accessor
# puts t1.marks_obtained  # this will give error
# After using attr_accessor no error

# Accessing variable without attr_accessors using getters and setters
# Class Variables
class Test2
  @@count = 0
  def initialize(obt,tot)
    @obt_marks = obt
    @total = tot
    @@count+=1
  end

  def getters
    puts "#{@obt_marks} #{@total}"
  end

  def set_marks=(value)
    @obt_marks = value
  end
  def self.get_count
    puts @@count
  end

end

# t2 = Test2.new(95,100)
# t3 = Test2.new(40,100)
# Test2.get_count

# Every class should have a to_s method of its own
# if we print a Box object without to_s method nothing but if we have a to_s method inside our class it will call that method
puts "**********************************************************"
class Box
  def initialize(w,h)
    @width = w
    @height = h
  end

  def setWidth=(value)
    @width = value
  end
  def setHeight=(value)
      @height = value
  end

  def to_s
    puts "w : #{@width} and h : #{@height}"
  end
end

box = Box.new(10,10)
box.freeze
if( box.frozen? )
  puts "Box object is frozen object"
else
  puts "Box object is normal object"
end
begin
  box.setHeight = 20  # will give error can't modify frozen Box
rescue
  puts "can't modify frozen Box"
end
puts box

# Class Constants
puts "**********************************************************"
class Comp
  COMPANY = "Gammastack"
  SIZE = 500
  def initialize(w,h)
    @width, @height = w, h
  end

  def getArea
      @width * @height
  end
end

c = Comp.new(100,100)

puts Comp::COMPANY
puts "**********************************************************"

# Create Object Using Allocate
class Box
  attr_accessor :width, :height

  # constructor method
  def initialize(w,h)
     @width, @height = w, h
  end

  # instance method
  def getArea
     @width * @height
  end
end

box1 = Box.new(10,10)
puts box1.getArea
box2 = Box.allocate
begin
  box2.getArea # This will throw an error
rescue
  puts "Object created using allocate no initialization so w and h have nill value"
end
