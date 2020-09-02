require_relative './guest.rb'
require_relative './trip.rb'

class Listing
    
    attr_reader :city
    @@all = []

    def initialize (city)

        @city = city
        self.save

    end

    def save 

        Listing.all << self

    end

    def self.all

        @@all

    end

    def trips

        Trip.all.select do |int_trip|

            int_trip.listing == self
            #gets all trips that belong to this instance 

        end

    end

    def trip_count

        self.trips.length

    end

    def guests

        self.trips.map {|int_trip| int_trip.guest} 
        #looks at all owned trips and gets every guest 
        #that also owns that trip        

    end

    def self.find_all_by_city(city)

        Listing.all.select {|int_listing| int_listing.city == city}
        #exact match

    end

    def self.most_popular 

        Listing.all.max_by {|int_listing| int_listing.trip_count} 

    end

end