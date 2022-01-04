require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: false,  womens_apparel: false)

Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@men_stores = Store.where(mens_apparel: true)

p "---Men Stores---"


@men_stores.each do |s| 
  puts "Name: #{s.name}- Annual Revenue:#{s.annual_revenue}"
end 

@women_stores = Store.where("womens_apparel = ? and annual_revenue < ?", true,1000000)

p "---Women Stores---"
@women_stores.each do |s| 
  puts "Name: #{s.name}- Annual Revenue:#{s.annual_revenue}"
end 


