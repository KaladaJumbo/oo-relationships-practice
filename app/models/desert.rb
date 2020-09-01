require_relative './file'
require_relative './ingredient'

class Desert

    attr_accessor :name, :bakery
    @@all = []

    def intialize (name)

        @name = name
        @@all << self 

    end

    def self.all
       
        @@all
        
    end

    def ingredients

        Ingredient.all.select do |int_ingredient|

            int_ingredient.desert == self

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

end

