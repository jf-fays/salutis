class CreateMedicalProcedures < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_procedures do |t|
      t.string :content

      t.timestamps
    end
  end
end
