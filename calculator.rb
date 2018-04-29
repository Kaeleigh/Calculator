# This method greets the user on start up and request their name

def greeting

  puts "Welcome to Kae's Calculator! What's your name? "
  name = gets
  puts "\n" + "It is nice to meet you #{name}"
  puts "\n" + "This is a simple calculator application that can add, subtract, multiply, and divide."
  puts "\n" + "Let's do some math"

  return name

end

# This method ask the user what type of calculation they would like to perform
# It returns the operation or an error for erroneous entry
def request_calculation_type
  puts "\n" + "Pick an operation."
  puts "\n" + "Type 1 to Add, 2 to Subtract, 3 to Multiply, or 4 to Divide two numbers: "
  operation_selection = gets.to_i

  if operation_selection == 1
    return "Addition"
  elsif operation_selection == 2
    return "Subtraction"
  elsif operation_selection == 3
    return "Multiplication"
  elsif operation_selection == 4
    return "Division"
  else
    return "Try Again"

  end

end

# This method performs the requested calculation and returns the result of the calculation
def calculate_answer(operator, a, b)

  if operator == "Addition"
    return  a + b
  elsif operator == "Subtraction"
    return  a - b
  elsif operator == "Multiplication"
    return a * b
  elsif operator == "Division"
    return a / b
  end

end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "Try Again"

    puts "\n" + "I do not understand this type of calculation... Try again."

  else
    puts "\n" + "What is the first number to #{current_calculation}: "
    first_number = gets.to_i
    puts "\n" + "What is the second number to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "\n" + "The answer is #{answer}"
    puts "\n" + "Type 1 to run another calculation or anything else to end: "
    run_calculator = gets.to_i

    if run_calculator != 1

      puts "\n" + "Thanks for using Kae's Calculator to crunch some numbers!  See you later ;-)"

    end
  end
end
