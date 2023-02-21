# Private public protected

class Box
  def initialize(w,h)
     @width, @height = w, h
  end

  # here getArea is by default public
  def getArea
     getWidth * getHeight
  end

  def getWidth
     @width
  end
  def getHeight
     @height
  end
  # make them private
  private :getWidth, :getHeight

  # instance method to print area
  def printArea
     @area = getWidth() * getHeight
     puts "Big box area is : #@area"
  end
  # make it protected
  protected :printArea
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
# box.printArea()


# If you want to access private and protected methods

class Test


  def method1
    puts "Public method"

    method2
    method3
  end

  def method2
    puts "Protected"
  end
  def method3
    puts "pRivate"
  end

  private :method3
  protected :method2
end

t = Test.new()
t.method1

