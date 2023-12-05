Rails.application.routes.draw do
  root "pages#home"

  ### Developer tools
  draw :dev

  get "up",
      to: "rails/health#show",
      as: :rails_health_check
end
