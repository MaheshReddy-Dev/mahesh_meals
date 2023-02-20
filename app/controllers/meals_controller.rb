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
        format.turbo_stream {flash.now[:success] = "#{@meal.name} was successfully created."}
        format.html { redirect_to meal_url(@meal), notice: "Meal was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @meal.update(meal_params)
        format.turbo_stream {flash.now[:notice] = "#{@meal.name} was successfully Updated."}
        format.html { redirect_to meal_url(@meal), notice: "Meal was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @meal.destroy

    respond_to do |format|
      format.turbo_stream { flash.now[:alert] = "#{@meal.name} was succesfully destroyed" }
      format.html { redirect_to meals_url, notice: "Meal was successfully destroyed." }
    end
  end

  private
    def set_meal
      @meal = Meal.find(params[:id])
    end

    def meal_params
      params.require(:meal).permit(:name)
    end
  
end
