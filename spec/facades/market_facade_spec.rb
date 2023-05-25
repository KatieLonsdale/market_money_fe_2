require 'rails_helper'

RSpec.describe MarketFacade do
  describe 'all_markets' do
    it 'creates a list of market poros' do
      mf = MarketFacade.new
      markets = mf.all_markets

      expect(markets).to be_a(Array)
      expect(markets).to be_all(Market)
    end
  end
end