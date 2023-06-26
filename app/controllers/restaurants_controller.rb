class RestaurantsController < ApplicationController
    # GET /restaurants
    def index
      # Retrieve all restaurants from the database
      restaurants = Restaurant.all
  
      # Render JSON response with specific attributes of each restaurant
      render json: restaurants, only: [:id, :name, :address]
    end
  
    # GET /restaurants/:id
    def show
      # Find the restaurant by its ID from the params
      restaurant = Restaurant.find_by(id: params[:id])
      
      if restaurant
        # If the restaurant exists, render JSON response with specific attributes of the restaurant
        # Include the associated pizzas with their attributes
        render json: restaurant, only: [:id, :name, :address], include: { pizzas: { only: [:id, :name, :ingredients] } }
      else
        # If the restaurant does not exist, render JSON response with an error message and the appropriate HTTP status code
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
  
    # DELETE /restaurants/:id
    def destroy
      # Find the restaurant by its ID from the params
      restaurant = Restaurant.find_by(id: params[:id])
      
      if restaurant
        # If the restaurant exists, delete it from the database
        restaurant.destroy
        # Send a response with no content (empty body) and the appropriate HTTP status code
        head :no_content
      else
        # If the restaurant does not exist, render JSON response with an error message and the appropriate HTTP status code
        render json: { error: 'Restaurant not found' }, status: :not_found
      end
    end
end