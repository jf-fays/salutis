class AddAuthentificationNumberToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :authentification_number, :string
  end
end
