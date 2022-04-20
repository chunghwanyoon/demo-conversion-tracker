class CreateGamesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :game_type, null: false
      t.timestamps null: false
    end
  end
end
