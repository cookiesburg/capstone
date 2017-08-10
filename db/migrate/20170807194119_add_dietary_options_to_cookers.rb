class AddDietaryOptionsToCookers < ActiveRecord::Migration[5.1]
  def change
    add_column :cookers, :dietary_options, :string
  end
end
