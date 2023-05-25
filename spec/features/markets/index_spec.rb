require 'rails_helper'

RSpec.describe 'Markets index page' do
  describe 'As a visitor, when I visit /markets' do
    before(:each) do
      @markets = MarketFacade.new.all_markets
    end
    it 'I see all markets listed with their name, city, and state' do
      visit markets_path

      within("#market-322458") do
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content("Washington")
        expect(page).to have_content("District of Columbia")
      end

      within("#market-322482") do
        expect(page).to have_content("39 North Marketplace")
        expect(page).to have_content("Sparks")
        expect(page).to have_content("Nevada")
      end
    end
    xit "has a button that links to each market's show page" do
      @markets.each do |market|
        visit markets_path
        within("#market-#{market.id}") do
          expect(page).to have_button("More Info")
          click_button("More Info")
        end
        expect(current_path).to eq(market_path(market.id))
      end
    end
  end
end