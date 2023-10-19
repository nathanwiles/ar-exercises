require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Vicky", last_name: "Kuthri", hourly_rate: 60)
@store1.employees.create(first_name: "Jared", last_name: "Luther", hourly_rate: 60)
@store1.employees.create(first_name: "Terrence", last_name: "King", hourly_rate: 60)
@store1.employees.create(first_name: "Jessie", last_name: "Putin", hourly_rate: 60)

@store2.employees.create(first_name: "Karl", last_name: "Keller", hourly_rate: 60)
@store2.employees.create(first_name: "Luke", last_name: "Skywalker", hourly_rate: 60)
@store2.employees.create(first_name: "Jeryl", last_name: "Patel", hourly_rate: 60)
@store2.employees.create(first_name: "Ken", last_name: "Lathier", hourly_rate: 60)
@store2.employees.create(first_name: "Jen", last_name: "Duffy", hourly_rate: 60)
