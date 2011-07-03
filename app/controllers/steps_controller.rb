class StepsController < ApplicationController
def create
  @recipe = Recipe.find(params[:recipe_id])
  @step = @recipe.steps.create!(params[:step])
 respond_to do |format|
  format.html {redirect_to @recipe}
  format.js
 end
end
end
