module UserAction
  class Base < ApplicationRecord
    self.inheritance_column = :action_type
    self.table_name = "user_actions"

    belongs_to :game
    belongs_to :user
  end
end
