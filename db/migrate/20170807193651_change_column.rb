class ChangeColumn < ActiveRecord::Migration[5.1]
  def self.up
    change_column :cookers, :price_per_week, :string
  end

  def self.down
    change_column :cookers, :price_per_week, :integer
  end
end
