# create files for your ruby classes in this directory
require_relative './ingredient'
require_relative './desert.rb'


class Bakery

    attr_accessor :name
    @@all = []

    def initialize (name)

        @name = name 
        @@all << self

    end

    def self.all

        @@all

    end

    def deserts 

        Desert.all.select do |int_desert|

            int_desert.bakery
            
        end

    end

    def ingredients 

        ingredients_arr = []

        self.deserts.each do |int_desert|

            int_desert.ingredients.each do |int_ing|

                ingredients_arr << int_ing

            end
            

        end

        return ingredients_arr

    end

    def add_desert(desert)

        desert.bakery_sold(self)

    end

end
