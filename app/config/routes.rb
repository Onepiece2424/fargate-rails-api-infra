Rails.application.routes.draw do
  get "/",       to: "root#index"
  get "/health", to: "health#show"
end
