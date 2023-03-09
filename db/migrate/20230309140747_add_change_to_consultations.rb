class AddChangeToConsultations < ActiveRecord::Migration[7.0]
  def change
    add_column :consultations, :content, :text
    add_column :consultations, :ald, :boolean
    add_column :consultations, :title, :string
  end
end
