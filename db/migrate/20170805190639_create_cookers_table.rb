class CreateCookersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cookers_tables do |t|
      t.string :food_description
      t.integer :price_per_week
      t.string :neighborhood
      t.boolean :delivery_available
    end
  end
end
