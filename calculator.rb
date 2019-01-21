# Calculator Type
$stdout.puts "Please select a calculator: (a)dvanced or (b)asic or (bmi)"
$stdout.flush
calculator_type = $stdin.gets.chomp

# Calculation Type
if calculator_type == "b"
  $stdout.puts "Would you like to do (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision"
  $stdout.flush
  basic_calculation_type = $stdin.gets.chomp
elsif calculator_type == "a"
  $stdout.puts "Would you like to do (p)ower or (s)quare root a number"
  $stdout.flush
  advanced_calculation_type = $stdin.gets.chomp
elsif calculator_type == "bmi"
  $stdout.puts "Would you like to do (i)mperial or (m)etric"
  $stdout.flush
  bmi_calculation_type = $stdin.gets.chomp
end

# Addition
if basic_calculation_type == "a"
  $stdout.puts "Enter a number"
  $stdout.flush
  addition_number_one = $stdin.gets.chomp
  $stdout.puts "Enter a number to add to this"
  $stdout.flush
  addition_number_two = $stdin.gets.chomp
    def add_numbers addition_number_one, addition_number_two
      $stdout.puts addition_number_one.to_i + addition_number_two.to_i
      $stdout.flush
    end
  add_numbers addition_number_one, addition_number_two

# Subtaction
elsif basic_calculation_type == "s"
  $stdout.puts "Enter a number"
  $stdout.flush
  subtraction_number_one = $stdin.gets.chomp
  $stdout.puts "Enter a number to subtract from this"
  $stdout.flush
  subtraction_number_two = $stdin.gets.chomp
    def subtract_numbers subtraction_number_one, subtraction_number_two
      $stdout.puts subtraction_number_one.to_i - subtraction_number_two.to_i
      $stdout.flush
    end
  subtract_numbers subtraction_number_one, subtraction_number_two

# Multiplication
elsif basic_calculation_type == "m"
  $stdout.puts "Enter a number"
  $stdout.flush
  multiplication_number_one = $stdin.gets.chomp
  $stdout.puts "Enter a number to multiply this by"
  $stdout.flush
  multiplication_number_two = $stdin.gets.chomp
    def multiply_numbers multiplication_number_one, multiplication_number_two
      $stdout.puts multiplication_number_one.to_i * multiplication_number_two.to_i
      $stdout.flush
    end
  multiply_numbers multiplication_number_one, multiplication_number_two

# Division
elsif basic_calculation_type == "d"
  $stdout.puts "Enter a number"
  $stdout.flush
  division_number_one = $stdin.gets.chomp
  $stdout.puts "Enter a number to divide this by"
  $stdout.flush
  division_number_two = $stdin.gets.chomp
    def divide_numbers division_number_one, division_number_two
      $stdout.puts division_number_one.to_f / division_number_two.to_f
      $stdout.flush
    end
  divide_numbers division_number_one, division_number_two
end

# Power
if advanced_calculation_type == "p"
  $stdout.puts "Enter a number"
  $stdout.flush
  power_number_one = $stdin.gets.chomp
  $stdout.puts "Enter the value of the power"
  $stdout.flush
  power_number_two = $stdin.gets.chomp
    def power power_number_one, power_number_two
      $stdout.puts power_number_one.to_i ** power_number_two.to_i
      $stdout.flush
    end
  power power_number_one, power_number_two

# Square Root
elsif advanced_calculation_type == "s"
  $stdout.puts "Enter a number"
  $stdout.flush
  square_root_number = $stdin.gets.chomp
    def square_root square_root_number
      $stdout.puts square_root_number.to_i ** 0.5
      $stdout.flush
    end
  square_root square_root_number
end

# BMI
# Imperial
if bmi_calculation_type == "i"
  $stdout.puts "Enter your weight in pounds"
  $stdout.flush
  weight_pounds = $stdin.gets.chomp
  $stdout.puts "Enter your height in inches"
  $stdout.flush
  height_inches = $stdin.gets.chomp
    def bmi_imperial weight_pounds, height_inches
      $stdout.puts (weight_pounds.to_f / (height_inches.to_f * height_inches.to_f) * 703)
      $stdout.flush
    end
  bmi_imperial weight_pounds, height_inches

# Metric
elsif bmi_calculation_type == "m"
  $stdout.puts "Enter your weight in kilos"
  $stdout.flush
  weight_kilos = $stdin.gets.chomp
  $stdout.puts "Enter your height in metres"
  $stdout.flush
  height_metres = $stdin.gets.chomp
    def bmi_imperial weight_kilos, height_metres
      $stdout.puts (weight_kilos.to_f / (height_metres.to_f * height_metres.to_f))
      $stdout.flush
    end
  bmi_imperial weight_kilos, height_metres
end
