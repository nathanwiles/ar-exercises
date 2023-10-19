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
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validate :salary_check
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :has_apparel

  def salary_check
    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "must be between 40 and 200")
    end
  end

  def has_apparel
    if !mens_apparel && !womens_apparel
      errors.add("No apparel!", "must have at least one apparel type")
    end
  end
end

puts "Please enter a store name:"
store_name = gets.chomp

new_store = Store.create(name: store_name)

puts new_store.errors.full_messages
