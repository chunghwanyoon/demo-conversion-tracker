class CreateUserActionsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :user_actions do |t|
      t.belongs_to :game
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
