require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "What store name are you looking for? "
store_name = gets.chomp

puts "Going to add this store into the Database"

store_name = Store.create(name: "#{store_name}").valid?


puts store_name