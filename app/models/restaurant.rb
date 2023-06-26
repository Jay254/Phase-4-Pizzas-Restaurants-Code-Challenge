class Restaurant < ApplicationRecord
    # Define the Restaurant model, which is a subclass of ApplicationRecord
  
    has_many :restaurant_pizzas
    # Establish a has-many association between the Restaurant model and the RestaurantPizza model.
    # A Restaurant has many RestaurantPizzas.
  
    has_many :pizzas, through: :restaurant_pizzas
    # Establish a has-many-through association between the Restaurant model and the Pizza model, using the RestaurantPizza model as a join table.
    # This association allows a Restaurant to have many Pizzas through the RestaurantPizza join table.
  
    # Other model code and associations can be added here
  
  end  