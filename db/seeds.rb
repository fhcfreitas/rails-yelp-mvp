# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# ["chinese", "italian", "japanese", "french", "belgian"]
puts 'Cleaning DB...'
Restaurant.destroy_all

puts 'Creating new DB'
liceu = { name: 'Liceu', address: 'Botafogo', phone_number: '21123456789', category: 'belgian' }
koni = { name: 'Koni', address: 'Copacabana', phone_number: '21123456789', category: 'japanese' }
abbraccio = { name: 'Abbraccio', address: 'Botafogo', phone_number: '21123456789', category: 'italian' }
temakeria = { name: 'Temakeria', address: 'Ipanema', phone_number: '21123456789', category: 'chinese' }
voila = { name: 'Voilá', address: 'Centro', phone_number: '21123456789', category: 'french' }

[liceu, koni, abbraccio, temakeria, voila].each do |restaurant_attributes|
  restaurant = Restaurant.create!(restaurant_attributes)
  puts "Created #{restaurant.name}"
end
