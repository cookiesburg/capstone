class AddEatersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :eaters_table do |t|
      t.references :user, index: true
    end
  end
end
