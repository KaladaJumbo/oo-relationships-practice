require_relative './listing.rb'
require_relative './trip.rb'
require 'pry'

class Guest

    attr_reader :name
    @@all = []

    def initialize (name)

        @name = name
        self.save

    end

    def save 

        Guest.all << self

    end

    def self.all 

        @@all

    end

    def listings

        self.trips.map {|int_trip| int_trip.listing}
        
    end

    def trips

        Trip.all.select {|int_trip| int_trip.guest == self}

    end

    def trip_count

        self.trips.length

    end

    def self.pro_traveller

        Guest.all.select {|int_guest| int_guest.trip_count > 1}

    end

    def self.find_by_name(name) 

        Guest.all.select {|int_guest| int_guest.name.include?(name)}
        #not exact name

    end


end