Rails.application.routes.draw do
  devise_for :users

  resources :recipes, except: :update do
    resources :recipe_foods, except: [:show, :update]
  end

  resources :foods, except: :update
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]
  root "foods#index"
end
