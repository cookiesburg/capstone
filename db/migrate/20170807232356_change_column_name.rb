class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :eaters, :subscribed_to, :cooker_id
  end
end
