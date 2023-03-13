class AddAuthToMedicines < ActiveRecord::Migration[7.0]
  def change
    add_column :medicines, :auth, :string
  end
end
