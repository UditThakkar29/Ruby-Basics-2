# Blocks
def block_m
  puts "method"
  yield
end

block_m {puts "block"}

# Block with para
def block_2
  yield 2
  yield 3
end

block_2 {|para| puts para}

puts "********************************"

# Procs
factor = Proc.new{|n| print n*2}

[3,2,1].each(&factor)
puts " "
# When passed into a method a block converts into proc

# def my_each(&block )
#   self.length.times do |i|
#     # and now we can call our new Proc like normal
#     block.call( self[i] )
#   end
# end
# [1,2,3].my_each { |i| puts i*2 }

puts "********************************"
# Lambda
lamb = lambda {|n| puts 'I am lambda'}
lamb1 = -> {puts 'I am lambda'}

lamb1.call
lamb1.()
lamb1.[]
lamb1.===


# Lambda vs Proc
# Should work
my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"
# Should raise exception
my_proc = Proc.new { return 1 }
puts "Proc result: #{my_proc.call}"
