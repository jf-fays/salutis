class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|
      t.text :content
      t.boolean :ald
      t.references :patient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
