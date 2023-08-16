# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

muschroom = { name: "muschroom", address: "1  St, paris E2 7JE", phone_number: "ÀÀÀÀÀ", category:"italian"}
bestroom = { name: "bestroom", address: "2 Bry St, London E2 7JE", phone_number: "ÀÀÀÀÀ", category:"italian"  }
pluton = { name: "pluton", address: "3 ry St, dubai E2 7JE", phone_number: "ÀÀÀÀÀ", category:"italian" }
venus = { name: "venus", address: "4 dary St, mails E2 7JE",phone_number: "ÀÀÀÀÀ", category:"italian"  }
mars = { name: "mars", address: "5 Bound St, kenya E2 7JE", phone_number: "ÀÀÀÀÀ", category:"italian" }
terre = { name: "terre", address: "6 Bory St, mali E2 7JE", phone_number: "ÀÀÀÀÀ", category:"italian" }

[muschroom, bestroom, pluton, venus, mars, terre].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

puts "reating review "
review.destroy_all

puts "reating review"

# review1 = { rating: 1, content: "create some table reviews ", restaurant_id: Restaurant.id}

# [review1].each do |attributes|
#   review = Review.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
