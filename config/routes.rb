Rails.application.routes.draw do
  resources :photos
  resources :discussions

  root to: "discussions#index"

  get "/auth/:provider/callback" => "sessions#new"
  get "/auth/sign-out" => "sessions#sign_out", as: :sign_out
end
