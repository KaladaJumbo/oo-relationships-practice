require_relative './ingredient.rb'
require_relative './file.rb'
require_relative './desert.rb'
require 'pry'

sugar = Ingredient.new('sugar', 10)
apple = Ingredient.new('apple', 5)
vanilla = Ingredient.new('vanilla', 4)

puts 'testing ingredients class'
Ingredient.all.each { |int_ingredient| 
    puts "#{int_ingredient.name}? 
    #{Ingredient.all.include?(int_ingredient)}"
}

puts "testing desert"

sugar_apple = Desert.new("sugar_apple")
sugar_apple.add_ingredient(apple)
sugar_apple.add_ingredient(sugar)

vanilla_apple = Desert.new("vanilla apple")
vanilla_apple.add_ingredient(vanilla)
vanilla_apple.add_ingredient(apple)

sugar_apple.ingredients.each {|int_ingredient| 
    puts "sugar_apple contains \n#{int_ingredient.name}"
}

puts "testing bakery"

quick_mart = Bakery.new("quick mart")
quick_mart.add_desert(sugar_apple)
quick_mart.add_desert(vanilla_apple)

puts quick_mart.name
v = quick_mart.ingredients.map do |int_ing|

    int_ing.name

end

puts v

#binding.pry


