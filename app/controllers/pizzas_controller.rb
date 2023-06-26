class PizzasController < ApplicationController
  # GET /pizzas
  def index
    # Retrieve all pizzas from the database
    pizzas = Pizza.all
    
    # Render JSON response with specific attributes of each pizza
    render json: pizzas, only: [:id, :name, :ingredients]
  end
end