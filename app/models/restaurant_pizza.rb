class RestaurantPizza < ApplicationRecord
  # Define the RestaurantPizza model, which is a subclass of ApplicationRecord

  belongs_to :restaurant
  # Establish a belongs-to association between the RestaurantPizza model and the Restaurant model.
  # A RestaurantPizza belongs to a single Restaurant.

  belongs_to :pizza
  # Establish a belongs-to association between the RestaurantPizza model and the Pizza model.
  # A RestaurantPizza belongs to a single Pizza.

  validates :price, inclusion: { in: 1..30 }
  # Add a validation to ensure that the price attribute of a RestaurantPizza is within the range of 1 to 30.
  # If the price is outside this range, the validation will fail.

  # Other model code and associations can be added here

end