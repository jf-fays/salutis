class CreatePrescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :prescriptions do |t|
      t.string :date
      t.references :patient, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :consultation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
