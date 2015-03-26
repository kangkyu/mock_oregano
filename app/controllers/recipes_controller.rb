class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

# recipe = Recipe.new(name: "apple jam", instructions: "stir")
# apple = Ingredient.new(name:"apple", description:"fruit")
# count = Unit.new( name: "count", unit_type: "each", converter: 1)
# recipe.ingredient_line_items.new(ingredient: apple, unit: count, amount_by_unit: 3)
# recipe.save

# olive_oil = Ingredient.new(name:"olive_oil", description:"salad dressing")
# spoon = Unit.new( name: "spoon", unit_type: "volumn", converter: 0.5)
# recipe.ingredient_line_items.new(ingredient: olive_oil, unit: spoon, amount_by_unit: 2)

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to recipe_url(@recipe)
    else
      render 'edit'
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :ingredient_line_items_attributes => [:id, :ingredient_id, :unit_id, :amount_by_unit])
  end
end
