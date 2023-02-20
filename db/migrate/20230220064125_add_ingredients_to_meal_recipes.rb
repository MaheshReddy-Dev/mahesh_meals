class AddIngredientsToMealRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :meal_recipes, :ingredients, :text
  end
end
