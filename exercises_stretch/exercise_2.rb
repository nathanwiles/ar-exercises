require_relative "../setup"
require_relative "../exercises/exercise_1"
require_relative "../exercises/exercise_6"
# Make sure non-empty store cannot be destroyed
@store1 = Store.find_by(id: 1)
if @store1.destroy
  puts "Store destroyed! It has #{@store1.employees.size} =/"
else
  puts "Could not destroy store :)"
end

# Make sure empty store can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0, mens_apparel: true)

if @empty_store.destroy
  puts "Empty store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end
