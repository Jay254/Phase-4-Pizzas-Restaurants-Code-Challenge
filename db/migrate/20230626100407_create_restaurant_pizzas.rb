class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    # Define a migration for creating the 'restaurant_pizzas' table

    create_table :restaurant_pizzas do |t|
      # Create a new table called 'restaurant_pizzas' with the specified columns

      t.integer :price
      # Add a 'price' column of type integer to the 'restaurant_pizzas' table

      t.references :pizza, null: false, foreign_key: true
      # Add a foreign key column 'pizza_id' referencing the 'pizzas' table, ensuring that the reference cannot be null

      t.references :restaurant, null: false, foreign_key: true
      # Add a foreign key column 'restaurant_id' referencing the 'restaurants' table, ensuring that the reference cannot be null

      t.timestamps
      # Add 'created_at' and 'updated_at' columns for automatic timestamping
    end
  end
end