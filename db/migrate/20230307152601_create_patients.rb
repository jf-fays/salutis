class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :social_security_number
      t.string :pathology
      t.text :medical_record
      t.float :height
      t.float :weight
      t.string :gender

      t.timestamps
    end
  end
end
