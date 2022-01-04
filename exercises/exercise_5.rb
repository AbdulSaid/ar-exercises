require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "---Total Revenue---"
puts Store.sum(:annual_revenue)

puts "---Avg annual revenue---"
puts Store.average(:annual_revenue)

@over1M = Store.where("annual_revenue > ?", 1000000).count

p "---Over 1M---"
p @over1M
# @over1M.each do |s| 
#   puts "Name: #{s.name}- Annual Revenue:#{s.annual_revenue}"
# end 