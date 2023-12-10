Rails.application.routes.draw do
  devise_for :users,
    controllers: {
      registrations: "users/registrations"
    }

  root "pages#home"

  ### Developer tools
  draw :dev

  get "up",
    to: "rails/health#show",
    as: :rails_health_check
end
