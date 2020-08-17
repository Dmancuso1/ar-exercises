require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store1 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true, created_at: Time.new, updated_at: Time.new)
store2 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false, created_at: Time.new, updated_at: Time.new)
store3 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true, created_at: Time.new, updated_at: Time.new)

# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
@mens_stores = Store.where(mens_apparel: true)

# Loop through each of these stores and output their name and annual revenue on each line.
@mens_stores.map { |store| 
puts "#{store.name}, $#{store.annual_revenue}"
}

# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
@womens_stores = Store.where('annual_revenue < 1000000').where(womens_apparel: true)
@womens_stores.map { |store| 
puts "#{store.name}, $#{store.annual_revenue}"
}
