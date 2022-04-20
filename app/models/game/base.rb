module Game

  def self.serialize_params
    {
      only: [:id, :game_type, :created_at, :updated_at]
    }
  end

  class Base < ApplicationRecord
    self.inheritance_column = :game_type
    self.table_name = "games"

    has_many :user_actions, dependent: :destroy

  end
end
