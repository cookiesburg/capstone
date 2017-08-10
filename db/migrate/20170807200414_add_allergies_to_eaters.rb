class AddAllergiesToEaters < ActiveRecord::Migration[5.1]
  def change
    add_column :eaters, :allergies, :string
  end
end
