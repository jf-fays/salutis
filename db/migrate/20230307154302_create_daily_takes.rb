class CreateDailyTakes < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_takes do |t|
      t.string :day
      t.string :day_time

      t.timestamps
    end
  end
end
