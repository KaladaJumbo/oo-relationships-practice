require_relative './file'
require_relative './ingredient'

class Desert

    attr_accessor :name, :bakery, :ingredient_arr
    @@all = []

    def initialize (name)

        @name = name
        @ingredient_arr = [] 
        @@all << self

    end

    def self.all
       
        @@all
        
    end

    def ingredients

        Ingredient.all.select do |int_ingredient|

            int_ingredient.desert.include?(self)

        end

    end

    def bakery_sold(bakery)

        self.bakery = bakery

    end

    def calories

        total_cal = 0   #sum

        self.ingredients.each do |int_ingredient|

            total_cal += int_ingredient.calories

        end

        return total_cal

    end

    def add_ingredient(ingredient)

        ingredient.desert << self

    end

end

