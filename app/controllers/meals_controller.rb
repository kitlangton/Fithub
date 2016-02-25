class MealsController < ApplicationController

  def new
    @meal = Meal.create
    redirect_to @meal
  end

  def show
    @meal = Meal.find(params[:id])
  end

end
