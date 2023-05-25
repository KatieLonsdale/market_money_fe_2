require 'rails_helper'

RSpec.describe MarketService do
  describe 'class methods' do
    describe 'all_markets' do
      it 'returns results for all markets in BE API', :vcr do
        markets = MarketService.all_markets[:data]
        
        attributes = [:name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count]
        markets.each do |market|
          expect(market).to have_key(:id)
          attributes.each do |attribute|
            expect(market[:attributes]).to have_key(attribute)
          end
        end
      end
    end
  end
end