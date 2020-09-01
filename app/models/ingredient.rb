require_relative './desert.rb'
require_relative './file.rb'

class Ingredient

    attr_accessor :name, :calorie
    @@all = []

    def initialize(name, calorie) 

        @name = name 
        @calorie = calorie
        @@all << self 

    end

    def self.all 

        @@all 

    end

    def find_all_by_name(name)

        Ingredient.all.find_all do |int_ingredient|

            int_ingredient.name.include?(name)

        end

    end

    def bakeries

        Bakery.all.select do |int_bakery|

            int_bakery.ingredients.include?(self)

        end


    end

end

