# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
mongelli = {name: "Mongelli", address: "Toulouse", phone_number: "+3356734526272", category: "italian"}
sales_gosses =  {name: "Les sales Gosses", address: "rue de l'Industrie", phone_number: "+3356734526256", category: "french"}
ramen = {name: "Shin-Ya", address: "Toulouse", phone_number: "+3356734526253", category: "japanese"}
etoiles = {name: "Etoiles d'Asie", address: "Toulouse", phone_number: "+3356734526290", category: "chinese"}
frites = {name: "Friterie", address: "Toulouse", phone_number: "+3356734526239", category: "belgian"}

[mongelli, sales_gosses, ramen, etoiles, frites].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
