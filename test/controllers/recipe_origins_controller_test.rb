require "test_helper"

class RecipeOriginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_origin = recipe_origins(:one)
  end

  test "should get index" do
    get recipe_origins_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_origin_url
    assert_response :success
  end

  test "should create recipe_origin" do
    assert_difference("RecipeOrigin.count") do
      post recipe_origins_url, params: { recipe_origin: { meal_recipe_id: @recipe_origin.meal_recipe_id, name: @recipe_origin.name } }
    end

    assert_redirected_to recipe_origin_url(RecipeOrigin.last)
  end

  test "should show recipe_origin" do
    get recipe_origin_url(@recipe_origin)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_origin_url(@recipe_origin)
    assert_response :success
  end

  test "should update recipe_origin" do
    patch recipe_origin_url(@recipe_origin), params: { recipe_origin: { meal_recipe_id: @recipe_origin.meal_recipe_id, name: @recipe_origin.name } }
    assert_redirected_to recipe_origin_url(@recipe_origin)
  end

  test "should destroy recipe_origin" do
    assert_difference("RecipeOrigin.count", -1) do
      delete recipe_origin_url(@recipe_origin)
    end

    assert_redirected_to recipe_origins_url
  end
end
