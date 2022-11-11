Rails.application.routes.draw do
  resources :general_shopping_lists
  devise_for :users

  resources :recipes, except: :update do
    resources :recipe_foods, except: [:show, :update]
  end

  resources :foods, except: :update
  resources :public_recipes, only: [:index]

  root "foods#index"
end
