require_relative "../setup"
require_relative "../exercises/exercise_1"

class Employee < ActiveRecord::Base
  before_create :generate_password

  private

  def generate_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join
  end
end

@store1 = Store.find_by(id: 1)
@store1.employees.create(first_name: "Khurrami", last_name: "Virtuoso", hourly_rate: 60)

puts Employee.find_by(first_name: "Khurrami").password
