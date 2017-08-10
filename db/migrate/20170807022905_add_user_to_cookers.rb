class AddUserToCookers < ActiveRecord::Migration[5.1]
  def change
    add_reference :cookers, :user, foreign_key: true
  end
end
