module CommonModules::ModelSerializer
  def self.included(base)
    base.send :include, InstanceMethods
  end

  module InstanceMethods
    def show
      self.as_json(self.class.serialize_params)
    end

    def show_public
      self.as_json(self.class.serialize_params_public)
    end
  end
end
