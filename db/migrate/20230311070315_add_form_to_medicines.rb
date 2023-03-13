class AddFormToMedicines < ActiveRecord::Migration[7.0]
  def change
    add_column :medicines, :form, :string
  end
end
