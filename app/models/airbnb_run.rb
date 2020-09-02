require_relative './guest.rb'
require_relative './trip.rb'
require_relative './listing.rb'

puts "testing Airbnb\n\n"

####################### initializing tests ########################
atlanta_listing = Listing.new("Atlanta")
chicago_listing = Listing.new("Chicago")
baltimore_listing = Listing.new("Baltimore")
dc_listing = Listing.new("DC")

kalada_guest = Guest.new("kalada")
cheyo_guest = Guest.new("cheyo")
moose_guest = Guest.new("moose")

kalada_to_atlanta = Trip.new(atlanta_listing, kalada_guest)
kalada_to_dc = Trip.new(dc_listing, kalada_guest)
cheyo_to_baltimore = Trip.new(baltimore_listing, cheyo_guest)
cheyo_to_dc = Trip.new(dc_listing, cheyo_guest)
moose_to_dc = Trip.new(dc_listing, moose_guest)
moose_to_chicago = Trip.new(chicago_listing, moose_guest)
moose_to_baltimore = Trip.new(baltimore_listing, moose_guest)

####################### initializing tests ########################

####################### list class ########################
puts "testing Listing class\n\n"
puts "does listing initialize?"
puts atlanta_listing.class == Listing
puts "does save work?"
puts Listing.all.include?(atlanta_listing)
puts "classes in all"
Listing.all.each {|int_listing| puts "#{int_listing} --- #{int_listing.city}"}
puts "#{Listing.most_popular.city} is the most popular(.most_popular)"
puts "find all by city -- most popular"
p Listing.find_all_by_city(Listing.most_popular.city)
puts "trips to most popular"
puts Listing.most_popular.trip_count
puts "all trips to most popular"
puts Listing.most_popular.trips
puts "all guests that have gone on trips to most popular"
Listing.most_popular.guests.each {|int_guest| 
    puts "#{int_guest} --- #{int_guest.name}"
}
puts "end of testing list class\n\n"

####################### list class ########################

####################### guest class ########################
puts "testing guests\n"

puts "pro_travellers"
Guest.pro_traveller.each {|int_guest| puts "#{int_guest} --- #{int_guest.name}"}
puts "finding all by name 'ka'"
Guest.find_by_name("ka").each {|int_guest| 
    puts "#{int_guest} --- #{int_guest.name} -- and they have gone to(listing): \n#{int_guest.listings}"
}

####################### guest class ########################

####################### no trip test ########################
#trip gets called whenever methods are called from guest 
#for info for listing and vice versa
####################### no trip test ########################




