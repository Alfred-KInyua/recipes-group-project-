class RecipesController < ApplicationController
  # GET /recipes or /recipes.json
  def index
    @user = User.find(current_user.id)
    @recipes = Recipe.where(user_id: @user.id)
  end

  # GET /recipes/1 or /recipes/1.json
  def show
    @recipe = Recipe.find(params[:id])
  end

  # GET /recipes/new
  def new
    @user = User.find(current_user.id)
    @recipe = Recipe.new    
  end

  # POST /recipes or /recipes.json
  def create
    @user = User.find(current_user.id)
    @recipe = @user.recipes.new(recipe_params)
    # @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path, notice: 'New recipe created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1 or /recipes/1.json
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public, :user_id)
  end
end
