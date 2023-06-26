# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Creating Pizzas
cheese_pizza = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pepperoni_pizza = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

# Creating Restaurants
sottocasa_nyc = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
pizzarte = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

# Creating RestaurantPizzas
RestaurantPizza.create(price: 10, pizza: cheese_pizza, restaurant: sottocasa_nyc)
RestaurantPizza.create(price: 12, pizza: pepperoni_pizza, restaurant: sottocasa_nyc)
RestaurantPizza.create(price: 8, pizza: cheese_pizza, restaurant: pizzarte)
