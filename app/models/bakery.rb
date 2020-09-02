# create files for your ruby classes in this directory
require_relative './ingredient'
require_relative './dessert.rb'

class Bakery 

    attr_reader :name
    @@all = []

    def initialize (name)

        @name = name 
        Bakery.all << self
    end
    
    def self.all 

        @@all

    end

    def ingredients

        ingredients_arr = []
        self.desserts.map do |int_dessert|

            int_dessert.ingredients.each do |int_ingredient|

                ingredients_arr << int_ingredient

            end

        end

        return ingredients_arr

    end

    def desserts

        Dessert.all.select do |int_dessert|
            
            int_dessert.bakery == self

        end

    end

    def average_calories

        sum = 0
        average = 0
        self.desserts.each {|int_dessert| sum += int_dessert.calories}
        average = sum.to_f / self.desserts.length

        return average

    end

    def shopping_list

        ing_arr = self.ingredients.map {|int_ingredient| int_ingredient.name}
        sorted_ing_arr = ing_arr.sort
        sorted_ing_arr.join(", ")


    end

end
    
