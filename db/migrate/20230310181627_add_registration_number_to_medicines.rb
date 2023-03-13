class AddRegistrationNumberToMedicines < ActiveRecord::Migration[7.0]
  def change
    add_column :medicines, :registration_number, :string
  end
end
