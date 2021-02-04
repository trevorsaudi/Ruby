## RUBY ON RAILS notes

# puts and prints
- puts outputs text and a newline, print does not

# execution 
- line by line execution

# code comments
```
# I am a single comment

=begin

I am a multi line comment
I can take as many lines as needed 

=end
```
# data types
```
x = 1
y = 1.2
my_name = "Trevor Saudi"
year2020 = false
year2021 = true
```
# Arithmetic operations
```
print 1+3
# Addition: output 4
 
print 1-2
# Subtraction: output -1
 
print 9/3
# Division: output 3
 
print 2*3
# Multiplication: output 6
 
print 2**3
# Exponentiation: output 8
 
print 16%9
# Modulo: output 7
 

```

# Object methods

```
var = "codecademy"
 
# Method to get the length of a string
print var.length # 10
 
# Method to get the string reversed
print var.reverse # ymedacedoc
 
# Method to convert all letters to uppercase
print var.upcase # CODECADEMY

#Method to convert a string into an array
print var.split(",")

```

# String interpolation

```
age = 30
print "Hi, my name is Trevor and I am #{age} years old"
```

# getting user input

```
user_input = gets.chomp
```

# Control flow in Ruby 
- if, else, elsif, unless
```
print "enter a number: "
num = gets.chomp
num =  num.to_i;
 
if num == 5
  print "number is 5"
elsif num == 10
  print "number is 10"
elsif num == 11
  print "number is 11"
else
  print "number is something other than 5, 10, or 11"
end
```
# Comparison

```
>, <, ||, &&
```

# unless 

- if the expression evaluates to false, then the code is executes
```
#This construct requires a "number" variable to be less than 10 in order to execute:
print "Enter a number"
number = gets.to_i
unless number > 10
  puts "number is less than 10."
end

```

## looping 
# each method
- to iterate over an array in Ruby, use the .each method

```
my_arr = {1,2,3,4,5,6}
my_arr.each {|x| print x}
```
# next keyword

- used to pass over certain elements and skip to the following iteration

```
my_arr = {1,2,3,4,5,6}
for i in my_arr 
next if i % 2 == 0
puts i 
end

```
# while loop

```
counter = 10
while counter > 0 do 
    puts counter
    counter -= 1
end
```

# range 
- .. and ...
- .. is inclusive while ... is exclusive of the last integer of the range

# loop
- used to run a block of code repeatedly

```
i = 10
loop do 
puts i 
i -= 1
break if i == 0
end
```

# until
- code inside an until block runs as long as the condition remains false. 


# Data structures

## Ruby Hashes

```

profile = {
  "name" => "Magnus",
  "profession" => "chess player"
  "ranking" => 1,
  "grandmaster?" => true
}
```
## Ruby Arrays

```
numbers = [1, 2, 3, 4, 5]
#An array of Integers
 
words = ["See", "Spot", "run"]
#An array of Strings
 
mixed = ["hello", 5, true, 3.0]
#An array with a String, Integer, Boolean, and Float
 
empty = []
```

# Ruby Hash New

```
 
#Creating a hash through Hash.new
lunch = Hash.new
```