class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    # Define a migration for creating the 'restaurants' table

    create_table :restaurants do |t|
      # Create a new table called 'restaurants' with the specified columns

      t.string :name
      # Add a 'name' column of type string to the 'restaurants' table

      t.string :address
      # Add an 'address' column of type string to the 'restaurants' table

      t.timestamps
      # Add 'created_at' and 'updated_at' columns for automatic timestamping
    end
  end
end