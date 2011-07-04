class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    3.times do
      step = @recipe.steps.build
      4.times { step.stepingrds.build }
    end
  end

  def create
    @recipe = Recipe.new([:recipe])
      if @recipe.save
        redirect_to @recipe, :notice => "Recipe was successfully created."
      else
        render :action => "new"
      end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
      if @recipe.update_attributes(params[:recipe])
        redirect_to @recipe, :notice => "Recipe was successfully updated."
      else
        render :action => 'edit'
      end
    end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url, :notice => "Successfully destroyed recipe."
  end
end
