class RemoveMedicalRecordFromPatient < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :medical_record, :text
  end
end
