class AddSubscribedToToEaters < ActiveRecord::Migration[5.1]
  def change
    add_column :eaters, :subscribed_to, :integer
  end
end
