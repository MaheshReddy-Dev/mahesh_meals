Rails.application.routes.draw do
  resources :recipe_origins
  resources :meal_recipes
  resources :meals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "meals#index"
end
