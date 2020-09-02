require_relative './listing.rb'
require_relative './guest.rb'

class Trip

    attr_reader :listing, :guest
    @@all = []

    def initialize (listing, guest)

        @listing = listing
        @guest = guest
        self.save

    end

    def save

        Trip.all << self

    end

    def self.all

        @@all

    end




end