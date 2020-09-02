require_relative './dessert.rb'
require_relative './ingredient.rb'

class DessertIngredient

    attr_reader :dessert, :ingredient
    @@all = []

    def initialize (dessert, ingredient)

        @dessert = dessert
        @ingredient = ingredient
        DessertIngredient.all << self

    end

    def self.all 

        @@all

    end


end