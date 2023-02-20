class RecipeOriginsController < ApplicationController
  before_action :set_recipe_origin, only: %i[ show edit update destroy ]

 
  def index
    @recipe_origins = RecipeOrigin.all
  end

  
  def show
  end

  
  def new
    @recipe_origin = RecipeOrigin.new
  end

 
  def edit
  end

  
  def create
    @recipe_origin = RecipeOrigin.new(recipe_origin_params)

    respond_to do |format|
      if @recipe_origin.save
        format.html { redirect_to recipe_origin_url(@recipe_origin), notice: "Recipe origin was successfully created." }

      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @recipe_origin.update(recipe_origin_params)
        format.html { redirect_to recipe_origin_url(@recipe_origin), notice: "Recipe origin was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @recipe_origin.destroy

    respond_to do |format|
      format.html { redirect_to recipe_origins_url, notice: "Recipe origin was successfully destroyed." }
    end
  end

  private
   
    def set_recipe_origin
      @recipe_origin = RecipeOrigin.find(params[:id])
    end

  
    def recipe_origin_params
      params.require(:recipe_origin).permit(:name, :meal_recipe_id)
    end
end
