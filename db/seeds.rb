# db/seeds.rb

# Clear existing data
Restaurant.destroy_all

# Create restaurants
restaurants = [
  {
    name: "Le Petit Bistro",
    address: "123 Rue Principale",
    phone_number: "555-1234",
    category: "French"
  },
  {
    name: "Mamma Mia Pizza",
    address: "456 Avenue des Pizzas",
    phone_number: "555-5678",
    category: "Italian"
  },
  {
    name: "Sushi Paradise",
    address: "789 Sushi Street",
    phone_number: "555-9012",
    category: "Japanese"
  },
  {
    name: "Taco Fiesta",
    address: "321 Taco Avenue",
    phone_number: "555-3456",
    category: "Mexican"
  },
  {
    name: "The Burger Joint",
    address: "987 Burger Boulevard",
    phone_number: "555-7890",
    category: "American"
  }
]

# Create restaurants in the database
restaurants.each do |restaurant_data|
  Restaurant.create!(restaurant_data)
  puts 'restaurant created'
end
