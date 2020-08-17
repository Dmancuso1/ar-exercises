require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...


# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
@total_annual_rev = Store.sum(:annual_revenue)
puts "Total annual revenure is: $#{@total_annual_rev}"
# On the next line, also output the average annual revenue for all stores.
@avg_annual_rev = Store.average(:annual_revenue)
puts "Average annual revenure is: $#{@avg_annual_rev}"

# Output the number of stores that are generating $1M or more in annual sales. Hint: Chain together where and size (or count) Active Record methods.
@stores_more_than_one_mil = Store.where('annual_revenue >= 1000000').count()

puts "stores generating one million or more in annual revenue: #{@stores_more_than_one_mil}"