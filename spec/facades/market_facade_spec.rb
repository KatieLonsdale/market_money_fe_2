require 'rails_helper'

RSpec.describe MarketFacade do
  describe 'all_markets' do
    it 'creates a list of market poros', :vcr do
      mf = MarketFacade.new
      markets = mf.all_markets

      expect(markets).to be_a(Array)
      expect(markets).to be_all(Market)
    end
  end

  describe 'find_market' do
    it 'returns the details of the market with a given id', :vcr do
      mf = MarketFacade.new
      market = mf.find_market(322474)

      expect(market).to be_a(Market)
    end
  end
end