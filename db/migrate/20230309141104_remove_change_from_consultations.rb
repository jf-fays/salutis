class RemoveChangeFromConsultations < ActiveRecord::Migration[7.0]
  def change
    remove_column :consultations, :date, :date
  end
end
