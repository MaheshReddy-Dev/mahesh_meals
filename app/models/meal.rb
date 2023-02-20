class Meal < ApplicationRecord
    has_many :meal_recipes ,  dependent: :destroy
end
