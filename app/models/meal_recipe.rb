class MealRecipe < ApplicationRecord
  belongs_to :meal
  has_one :recipe_origin , dependent: :destroy
  validates :name, presence: true
  validates :ingredients, presence: true
end
