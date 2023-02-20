require "application_system_test_case"

class MealRecipesTest < ApplicationSystemTestCase
  setup do
    @meal_recipe = meal_recipes(:one)
  end

  test "visiting the index" do
    visit meal_recipes_url
    assert_selector "h1", text: "Meal recipes"
  end

  test "should create meal recipe" do
    visit meal_recipes_url
    click_on "New meal recipe"

    fill_in "Meal", with: @meal_recipe.meal_id
    fill_in "Name", with: @meal_recipe.name
    click_on "Create Meal recipe"

    assert_text "Meal recipe was successfully created"
    click_on "Back"
  end

  test "should update Meal recipe" do
    visit meal_recipe_url(@meal_recipe)
    click_on "Edit this meal recipe", match: :first

    fill_in "Meal", with: @meal_recipe.meal_id
    fill_in "Name", with: @meal_recipe.name
    click_on "Update Meal recipe"

    assert_text "Meal recipe was successfully updated"
    click_on "Back"
  end

  test "should destroy Meal recipe" do
    visit meal_recipe_url(@meal_recipe)
    click_on "Destroy this meal recipe", match: :first

    assert_text "Meal recipe was successfully destroyed"
  end
end
