class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    # Define a migration for creating the 'pizzas' table

    create_table :pizzas do |t|
      # Create a new table called 'pizzas' with the specified columns

      t.string :name
      # Add a 'name' column of type string to the 'pizzas' table

      t.text :ingredients
      # Add an 'ingredients' column of type text to the 'pizzas' table

      t.timestamps
      # Add 'created_at' and 'updated_at' columns for automatic timestamping
    end
  end
end
