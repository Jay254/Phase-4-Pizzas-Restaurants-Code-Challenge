class RestaurantPizzasController < ApplicationController
  # POST /restaurant_pizzas
  def create
    # Create a new instance of RestaurantPizza with permitted parameters
    restaurant_pizza = RestaurantPizza.new(restaurant_pizza_params)
    
    if restaurant_pizza.save
      # If the RestaurantPizza is saved successfully, render JSON response with the associated pizza's attributes
      render json: restaurant_pizza.pizza, only: [:id, :name, :ingredients]
    else
      # If there are validation errors, render JSON response with the error messages and the appropriate HTTP status code
      render json: { errors: restaurant_pizza.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def restaurant_pizza_params
    # Specify the permitted parameters for the RestaurantPizza
    params.permit(:price, :pizza_id, :restaurant_id)
  end
end