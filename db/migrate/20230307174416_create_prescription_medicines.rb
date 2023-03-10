class CreatePrescriptionMedicines < ActiveRecord::Migration[7.0]
  def change
    create_table :prescription_medicines do |t|
      t.integer :duration
      t.string :dosage
      t.references :prescription, null: false, foreign_key: true
      t.references :medicine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
