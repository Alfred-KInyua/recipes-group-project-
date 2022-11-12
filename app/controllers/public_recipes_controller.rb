class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.eager_load(:user).includes([:recipe_foods]).where(public: true).order(created_at: :desc)
  end
end
