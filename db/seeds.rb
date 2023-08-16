puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
myDeli =  {name: "MyDeli", address: "Linienstraße 311 Berlin", category: "belgian"}
taiwanExpress =  {name: "Taiwan Express", address: "Avinguda Parallel 381 Barcelona", category: "chinese"}
tiozio =  {name: "Tio Zio", address: "Loughbourough St 231", category: "italian"}

[dishoom, pizza_east, myDeli, taiwanExpress, tiozio].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
