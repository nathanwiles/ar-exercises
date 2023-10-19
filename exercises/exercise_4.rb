require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

def print_list(store_list)
  store_list.each do |store|
    puts "#{store.name} has an annual revenue of: $#{store.annual_revenue}"
    end

end

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

print_list(@mens_stores)


@womens_apparel = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)


print_list(@womens_apparel)
