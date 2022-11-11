Rails.application.routes.draw do
  devise_for :users
  root "foods#index"

  resources :recipes, except: :update do
    resources :recipe_foods, except: [:show, :update]
  end

  resources :foods, except: :update
  resources :public_recipes, only: [:index]


end
