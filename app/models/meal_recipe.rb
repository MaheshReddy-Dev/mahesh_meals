class MealRecipe < ApplicationRecord
  belongs_to :meal
  has_one :recipe_origin , dependent: :destroy
end
