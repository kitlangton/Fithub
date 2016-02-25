class FoodsController < ApplicationController

  def search
    @food_search = params[:food_search]
    json = Nutritionix.new.search(@food_search)
    @results = NutritionixResult.from_json(json)
  end

end
