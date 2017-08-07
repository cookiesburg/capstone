class ChangeNameofEatersTable < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :eaters_table, :eaters
  end

  def self.down
    rename_table :eaters, :eaters_table
  end
end

