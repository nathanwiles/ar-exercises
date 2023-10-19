require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
grand_total_rev =  Store.sum(:annual_revenue)
average_rev = Store.average(:annual_revenue).round
mill_stores = Store.where("annual_revenue >= ?", 1000000).count


puts "The company's total revenue is #{grand_total_rev}"
puts "The average store revenue is #{average_rev}"
puts "There are #{mill_stores} stores that have 1M+ in revenue"
