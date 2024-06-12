# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St', phone_number: '555-4444', category: 'japanese' }
amazool = { name: 'Amazool', address: 'Eloy Alfaro S21-65', phone_number: '333-4444', category: 'belgian' }
applehen = { name: 'Applehen', address: 'Amazonas N32-21', phone_number: '888-4444', category: 'french' }
maca = { name: 'Maca', address: 'Maine 123', phone_number: '111-9999', category: 'italian' }
artuk = { name: 'Artuu', address: 'Palm 368', phone_number: '666-8888', category: 'chinese' }

[dishoom, amazool, applehen, maca, artuk].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
