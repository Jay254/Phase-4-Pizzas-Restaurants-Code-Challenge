class Pizza < ApplicationRecord
    # Define the Pizza model, which is a subclass of ApplicationRecord
  
    has_many :restaurant_pizzas
    # Establish a one-to-many association between Pizza and RestaurantPizza models.
    # A Pizza can have multiple RestaurantPizzas.
  
    has_many :restaurants, through: :restaurant_pizzas
    # Establish a many-to-many association between Pizza and Restaurant models.
    # A Pizza can be associated with multiple Restaurants through the RestaurantPizza model.
  
    # Other model code and validations can be added here
  
end  