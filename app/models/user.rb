class User < ApplicationRecord
  has_many :user_actions, dependent: :destroy

  def self.serialize_params
    {
      only: [:id, :account_name, :active]
    }
  end
end
