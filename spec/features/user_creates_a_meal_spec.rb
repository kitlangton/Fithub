require 'rails_helper'

feature 'User creates a meal' do

  scenario 'they search for meal items' do
    # VCR.use_cassette("searchapple") do
      meal = Meal.create
      visit meal_path(meal)
      within 'form#search_form' do
        fill_in 'food_search', with: 'Apple'
      end
      save_and_open_page
      # click_button "Search"

      # expect(page).to have_content 'Apple'
    # end
  end

end
