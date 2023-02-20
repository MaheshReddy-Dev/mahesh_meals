require "application_system_test_case"

class RecipeOriginsTest < ApplicationSystemTestCase
  setup do
    @recipe_origin = recipe_origins(:one)
  end

  test "visiting the index" do
    visit recipe_origins_url
    assert_selector "h1", text: "Recipe origins"
  end

  test "should create recipe origin" do
    visit recipe_origins_url
    click_on "New recipe origin"

    fill_in "Meal recipe", with: @recipe_origin.meal_recipe_id
    fill_in "Name", with: @recipe_origin.name
    click_on "Create Recipe origin"

    assert_text "Recipe origin was successfully created"
    click_on "Back"
  end

  test "should update Recipe origin" do
    visit recipe_origin_url(@recipe_origin)
    click_on "Edit this recipe origin", match: :first

    fill_in "Meal recipe", with: @recipe_origin.meal_recipe_id
    fill_in "Name", with: @recipe_origin.name
    click_on "Update Recipe origin"

    assert_text "Recipe origin was successfully updated"
    click_on "Back"
  end

  test "should destroy Recipe origin" do
    visit recipe_origin_url(@recipe_origin)
    click_on "Destroy this recipe origin", match: :first

    assert_text "Recipe origin was successfully destroyed"
  end
end
