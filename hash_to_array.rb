#(3) Write a program that collects 5 keys and 5 values from the user, and stores them in a hash. Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values. Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?) Call this program hash_to_array.rb.

# collects 5 keys & 5 values from user & stores in hash

def hash_to_array()    #define function
  counter = 1           #set local variables for this function to access
  hash = {}             #empty hash to store user input
  numbers = []          #returning array variables
  colors = []
  puts "Let's pick 5 different numbers and colors."  

  while counter <= 5 do      #loop to collect 5 of each input type needed
    print "#{counter} Pick a number. "
    number = gets.chomp.to_i
    print "#{counter} Pick a color. "
    color = gets.chomp.to_s
    counter += 1
    hash.store(number, color)      #store input into a hash, easiest way is via key value pair, could also do hash[colors]=color
  end
    
     
  print "Do you want all of your colors or all of your numbers? "
  answer = gets.chomp
    
  if answer == "numbers" 
    hash.each_key {|key| numbers.push(key)}
    puts numbers
  else 
    hash.each_value {|value| colors.push(value)}
    puts colors
  end
end

hash_to_array()