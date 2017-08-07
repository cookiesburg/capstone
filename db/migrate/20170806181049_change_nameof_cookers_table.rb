class ChangeNameofCookersTable < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :cookers_tables, :cookers
  end

  def self.down
    rename_table :cookers, :cookers_tables
  end
end
