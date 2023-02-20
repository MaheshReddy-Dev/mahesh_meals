class CreateMealRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_recipes do |t|
      t.string :name
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
