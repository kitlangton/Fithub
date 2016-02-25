class FoodsController < ApplicationController

  def search
    @meal = Meal.find(params[:meal_id])
    if params[:food_search].empty?
      flash[:alert] = "Must enter search term."
      redirect_to :back
    end
    @food_search = params[:food_search]
    @results = Nutritionix.new.search(@food_search)
  end

end
