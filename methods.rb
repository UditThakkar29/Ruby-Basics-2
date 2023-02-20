class Student
  def self.class_method()
    puts "Class method"
  end

  def instance_method()
    puts "Instance Method"
  end

end

Student.class_method() # Will print class method
Student.instance_method() # will throw error

s1 = Student.new()
s1.class_method() # will throw error
s1.instance_method() # will print instanche method
