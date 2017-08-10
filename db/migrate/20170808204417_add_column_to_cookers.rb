class AddColumnToCookers < ActiveRecord::Migration[5.1]
  def change
    add_column :cookers, :profile_photo, :string
  end
end
