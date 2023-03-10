class AddNrToMedicines < ActiveRecord::Migration[7.0]
  def change
    add_column :medicines, :nr, :boolean
  end
end
