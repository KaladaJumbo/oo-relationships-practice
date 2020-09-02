require_relative './dessert.rb'
require_relative './bakery.rb'

class Ingredient

    attr_reader :name, :calories
    @@all = []

    def initialize (name, calories)

        @name = name
        @calories = calories
        self.save 

    end

    def save

        Ingredient.all << self

    end

    def self.all 

        @@all

    end

    def dessert

        self.dessert_ingredients.map do |int_desIng|

            int_desIng.dessert

        end
        

    end

    def dessert_ingredients

        DessertIngredient.all.select do |int_desIng|

            int_desIng.ingredient == self

        end

    end 

    def bakeries

        bake_arr = self.dessert.map do |int_dessert| 

            int_dessert.bakery

        end

        return bake_arr.uniq

    end

    def self.find_all_by_name(name)

        Ingredient.all.select do |int_ing|

            int_ing.name.include?(name)

        end

    end



end