class CreateRecipeOrigins < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_origins do |t|
      t.string :name
      t.references :meal_recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
