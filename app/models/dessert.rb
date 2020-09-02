require_relative './bakery'
require_relative './ingredient'


class Dessert

    attr_reader :name, :bakery
    @@all = []

    def initialize (name, bakery)

        @name = name
        @bakery = bakery
        Dessert.all << self


    end

    def self.all

        @@all

    end

    def ingredients

        self.dessert_ingredients.map do |int_DesIng|

            int_DesIng.ingredient

        end

    end

    def dessert_ingredients

        DessertIngredient.all.select do |int_DesIng|

            int_DesIng.dessert == self

        end

    end

    def calories

        total = 0
        self.ingredients.each {|int_ing| total += int_ing.calories}

        return total

    end


end