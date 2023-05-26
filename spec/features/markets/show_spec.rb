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
    xit 'displays a list of vendors at that market' do

    end
    xit 'links each vendor name to its show page' do

    end
  end
end