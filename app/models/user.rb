class User < ApplicationRecord

  def self.serialize_params
    {
      only: [:id, :account_name, :active]
    }
  end
end
