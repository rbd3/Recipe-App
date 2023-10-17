class RecipeFoodsController < ApplicationController
  def index
    @recipe_foods = RecipeFood.all
  end

  def show
    @recipe_food = RecipeFood.find(params[:id])
    @recipe = Recipe.find(params[:recipe_id])
    @food = Food.find(params[:food_id])
  end

  def new
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe_food = Recipe.new(recipeFood_params)
    if @recipe_food.save
      redirect_to @recipe_food, notice: 'Recipe food was successfully created.'
    else
      render :new
    end
  end

  def update
    @recipe_food.update(recipeFood_params)
    redirect_to @recipe_food, notice: 'Recipe food was successfully updated.'
  end

  def destroy
    @recipe_food.find(params[:id]).destroy
    redirect_to recipe_foods_url, notice: 'Recipe food was successfully destroyed.'
  end

  private

  def recipeFood_params
    params.require(:recipe_food).permit(:quantity)
  end
end
