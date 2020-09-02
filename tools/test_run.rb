require_relative '../app/models/ingredient.rb'
require_relative '../app/models/bakery.rb'
require_relative '../app/models/dessert.rb'
require_relative '../app/models/dessert_ingredients.rb'
require 'pry'


quick_mart = Bakery.new("quick mart")
aunty_anne = Bakery.new("aunty anne")
bobs = Bakery.new ("bobs")


vanilla_apple = Dessert.new("vanilla_apple", quick_mart)
sugar_apple = Dessert.new("sugar_apple", quick_mart)
vanilla_sugar = Dessert.new("vanilla_sugar", bobs)


sugar = Ingredient.new("sugar", 30)
vanilla = Ingredient.new("vanilla", 15)
apple = Ingredient.new("apple", 10)
vanilla_drizzle = Ingredient.new("vanilla drizzle", 5000000000)

relation1 = DessertIngredient.new(sugar_apple, sugar)
relation2 = DessertIngredient.new(sugar_apple, apple)

relation3 = DessertIngredient.new(vanilla_apple, vanilla)
relation4 = DessertIngredient.new(vanilla_apple, apple)

relation5 = DessertIngredient.new(vanilla_sugar, vanilla)
relation6 = DessertIngredient.new(vanilla_sugar, sugar)


puts "ingredients in quickmart"
p quick_mart.ingredients


puts "checking desserts in quick mart"
puts quick_mart.desserts

puts "--------does quickmart include vanilla_apple?----"
puts quick_mart.desserts.include?(vanilla_apple)

puts "caloried for vanilla_apple exp - 25"
puts vanilla_apple.calories

puts "average calories in QM exp -- ~32.5"
puts quick_mart.average_calories

puts "the shopping list"
puts quick_mart.shopping_list.class 
puts quick_mart.shopping_list
    
puts "all desserts using sugar exp - 2 "
puts sugar.dessert
puts sugar.dessert.length

puts "all bakeries that contain apple"
p apple.bakeries

puts "all ingredients that include 'vani' -- 2 "
p Ingredient.find_all_by_name("vani")