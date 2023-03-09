class RemoveChangeFromPrescriptions < ActiveRecord::Migration[7.0]
  def change
    remove_column :prescriptions, :date, :date
    remove_foreign_key :prescriptions, column: :patient_id
    remove_foreign_key :prescriptions, column: :user_id
    remove_column :prescriptions, :patient_id, :bigint
    remove_column :prescriptions, :user_id, :bigint
  end
end
