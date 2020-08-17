require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Add the following code directly inside the Store model (class): has_many :employees
# done

# Add the following code directly inside the Employee model (class): belongs_to :store
# done

# Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Dane", last_name: "Mancuso", hourly_rate: 80)
@store1.employees.create(first_name: "Chris", last_name: "Martin", hourly_rate: 40)
@store1.employees.create(first_name: "Natasha", last_name: "Summers", hourly_rate: 45)
@store1.employees.create(first_name: "Megatron", last_name: "Halper", hourly_rate: 36)
@store1.employees.create(first_name: "Strong", last_name: "Bow", hourly_rate: 47)

@store2.employees.create(first_name: "Peter", last_name: "Griffin", hourly_rate: 50)
@store2.employees.create(first_name: "Sal", last_name: "Toccani", hourly_rate: 45)
@store2.employees.create(first_name: "Lindsay", last_name: "Halt", hourly_rate: 37)
@store2.employees.create(first_name: "Charles", last_name: "Potter", hourly_rate: 10)
@store2.employees.create(first_name: "Darth", last_name: "Vader", hourly_rate: 25)
@store2.employees.create(first_name: "Boba", last_name: "Fett", hourly_rate: 47)


# Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).