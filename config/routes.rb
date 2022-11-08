Rails.application.routes.draw do
  devise_for :users
  resources :foods, except: :update
  # Defines the root path route ("/")
  root "foods#index"
end
