class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def show_public
    self.as_json(self.class.serialize_params_public)
  end

  def show
    self.as_json(self.class.serialize_params)
  end
end
