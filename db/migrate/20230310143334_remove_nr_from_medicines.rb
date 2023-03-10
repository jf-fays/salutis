class RemoveNrFromMedicines < ActiveRecord::Migration[7.0]
  def change
    remove_column :medicines, :NR, :string
  end
end
