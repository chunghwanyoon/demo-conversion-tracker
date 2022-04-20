class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :account_name, null: false, unique: true
      t.string :password_hashed, null: false
      t.boolean :active, null: false, default: true
      t.timestamps null: false
    end
  end
end
