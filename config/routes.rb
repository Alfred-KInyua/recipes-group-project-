Rails.application.routes.draw do
  
  devise_for :users
  resources :recipes, except: :update
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :foods, except: :update
  # Defines the root path route ("/")
  root "foods#index"
end
