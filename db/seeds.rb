# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "preping and cleaning DB"

Restaurant.destroy_all

puts "DB has been cleaned!"
puts "Creating new DB"

20.times do
  new_restaurant = Restaurant.new(name: Faker::Restaurant.name,
                                  address: Faker::Address.full_address,
                                  phone_number: Faker::PhoneNumber.cell_phone,
                                  category: ["chinese", "italian", "japanese", "french", "belgian"].sample)

      if new_restaurant.save
          puts "#{new_restaurant.id} was created.."
      end
end

puts "Success :)"
