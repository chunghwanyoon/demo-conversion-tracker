Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  scope :api do
    scope :v1 do
      resource :auth, only: [:sign_up], controller: "auth" do
        post "sign_up", on: :collection
      end
    end
  end
end
