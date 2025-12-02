puts "Simple Calculator"

def add(num_1, num_2)
  num_1 + num_2
end

def subtract(num_1, num_2)
  num_1 - num_2
end

def multiply(num_1, num_2)
  num_1 * num_2
end

def divide(num_1, num_2)
  num_1 / num_2
end

def square(num)
  num * num
end

def square_root(num)
  Math.sqrt(num)
end

def cube(num)
  num * num * num
end

def cube_root(num)
  num ** (1.0/3.0)
end 

loop do
  puts "Enter first number:"
  first_number = gets.chomp.to_f 

  puts "Enter second number:"
  second_number = gets.chomp.to_f 

  puts "Select operation: +, -, *, /, square, square_root, cube, cube_root"
  operation = gets.chomp 

  case operation
  when "+"
    result = add(first_number, second_number)
  when "-"
    result = subtract(first_number, second_number)
  when "*"
    result = multiply(first_number, second_number)
  when "/"
    result = divide(first_number, second_number)
  when "square"
    result = square(first_number)
  when "square_root"
    result = square_root(first_number)
  when "cube"
    result = cube(first_number)
  when "cube_root"
    result = cube_root(first_number)
  else
    puts "Invalid operation"
    exit
  end

  puts "Result: #{result}"

  puts "Do you want to perform another calculation? (yes/no)"
  continue = gets.chomp.downcase

  break unless continue == "yes"
end

puts "Goodbye!"
