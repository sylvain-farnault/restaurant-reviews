# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 5, chef_name: 'Philou Etchebest' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 4, chef_name: 'Helene Darroze' }
pizza_hut =  { name: "Pizza Hut", address: "Aubagne", stars: 2, chef_name: 'Lapin Chef' }

[ dishoom, pizza_east, pizza_hut ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
