Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: [:index, :show, :destroy] # Only the index, show, and destroy actions are allowed
  resources :pizzas, only: [:index] # Only the index action is allowed
  post '/restaurant_pizzas', to: 'restaurant_pizzas#create' # Defines a custom route for creating a new 'restaurant_pizzas' resource
end
