# Inheritance

class Animal
  def eat
    print 'eating'
  end
  def move
    puts "moving"
  end
end

class Human < Animal
  def eat
    puts ("#{super} like a human")
  end
  def dance
    puts "dance"
  end
end

human = Human.new
human.dance
human.eat

# Compostion
class Move
  def step
    puts "stepping"
  end
  def crawl
    puts "crawling"
  end
end

class Human
  def initialize
    @movement = Move.new
  end
  def move
    @movement.step
  end
end

class Snake
  def initialize
    @movement = Move.new
  end
  def move
    @movement.crawl
  end
end

human = Human.new
human.move
snake = Snake.new
snake.move
