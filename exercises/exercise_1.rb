require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...


  store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true, created_at: Time.new, updated_at: Time.new)
  store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true, created_at: Time.new, updated_at: Time.new)
  store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false, created_at: Time.new, updated_at: Time.new)


# Output (puts) the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.

puts "There are #{Store.count} stores!"