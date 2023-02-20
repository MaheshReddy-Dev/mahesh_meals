class RecipeOrigin < ApplicationRecord
  belongs_to :meal_recipe
  validates :name, presence: true
end
