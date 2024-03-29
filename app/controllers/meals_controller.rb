class MealsController < ApplicationController
  before_action :set_meal, only: %i[ show edit update destroy ]

  def index
    @meals = Meal.all
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def edit
  end

  def create
    @meal = Meal.new(meal_params)

    respond_to do |format|
      if @meal.save
        format.html { redirect_to meal_url(@meal), notice: "Meal was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.html { redirect_to meal_url(@meal), notice: "Meal was successfully updated." }
        render "show"
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @meal.destroy

    respond_to do |format|
      format.html { redirect_to meals_url, notice: "Meal was successfully destroyed." }
    end
  end

  private
    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:name, :ingredients)
    end
end
