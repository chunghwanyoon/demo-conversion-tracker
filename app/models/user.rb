class User < ApplicationRecord
  has_many :user_actions, dependent: :destroy

  def self.serialize_params
    {
      only: [:id, :account_name, :active],
      methods: [:something_constant]
    }
  end

  def something_constant
    "CONSTANT"
  end
end
