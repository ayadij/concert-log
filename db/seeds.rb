# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
4.times do |concert|
  Log.create!(name: "Concert Name",
              artists: "Performing Artist Name One, Performing Artist or Band Name 2",
              venue: "Venue Name")
end

puts "4 concert logs created"