require 'rails_helper'

RSpec.describe 'market show page' do
  describe "As a visitor, When I visit a market's show page" do
    it 'displays the market name and address', :vcr do
      visit market_path(322474)

      expect(page).to have_content("2nd Street Farmers' Market")
      expect(page).to have_content("194 second street")
      expect(page).to have_content("Amherst")
      expect(page).to have_content("Virginia")
      expect(page).to have_content("24521")
    end
    it 'displays a list of vendors at that market', :vcr do
      visit market_path(322474)

      within("#vendors") do
        expect(page).to have_content("Orange County Olive Oil")
        expect(page).to have_content("The Vodka Vault")
        expect(page).to have_content("The Fabric Patch")
      end
    end
    it 'links each vendor name to its show page', :vcr do
      visit market_path(322474)

      within("#vendors") do
        click_link "Orange County Olive Oil"
      end

      expect(current_path).to eq(vendor_path(55297))
    end
  end
end