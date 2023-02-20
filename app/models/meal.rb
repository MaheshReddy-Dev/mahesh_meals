class Meal < ApplicationRecord
    has_many :meal_recipes ,  dependent: :destroy
    validates :name, presence: true
end
