class MealRecipesController < ApplicationController
  before_action :set_meal_recipe, only: %i[ show edit update destroy ]


  def index
    @meal_recipes = MealRecipe.all
  end

  def show
  end

  def new
    @meal_recipe = MealRecipe.new
  end

  def edit
  end

  def create
    @meal_recipe = MealRecipe.new(meal_recipe_params)

    respond_to do |format|
      if @meal_recipe.save
        format.html { redirect_to meal_recipe_url(@meal_recipe), notice: "meal recipe was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @meal_recipe.update(meal_recipe_params)
        format.turbo_stream {flash.now[:notice] = "#{@meal_recipe.name} was successfully Updated."}
        format.html { redirect_to meal_recipe_url(@meal_recipe), notice: "Meal recipe was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @meal_recipe.destroy

    respond_to do |format|
      format.turbo_stream {flash.now[:alert] = "#{@meal_recipe.name} was successfully deleted."}
      format.html { redirect_to meal_recipes_url, notice: "Meal recipe was successfully destroyed." }    
    end
  end

  private

    def set_meal_recipe
      @meal_recipe = MealRecipe.find(params[:id])
    end

    def meal_recipe_params
      params.require(:meal_recipe).permit(:name, :meal_id, :ingredients)
    end
end
