class CreatePrescriptionDailyTakes < ActiveRecord::Migration[7.0]
  def change
    create_table :prescription_daily_takes do |t|
      t.references :daily_take, null: false, foreign_key: true
      t.references :prescription_medicine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
