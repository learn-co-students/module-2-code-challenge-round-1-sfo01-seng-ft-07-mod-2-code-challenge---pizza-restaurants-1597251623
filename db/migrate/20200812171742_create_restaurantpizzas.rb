class CreateRestaurantpizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurantpizzas do |t|
      t.integer :price
      t.references :pizza, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
