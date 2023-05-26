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
    describe 'find_market' do
      it 'returns the market with given id', :vcr do
        market = MarketService.find_market(322474)[:data]
        expect(market).to have_key(:id)
        expect(market[:id]).to eq("322474")

        attributes = [:name, :street, :city, :county, :state, :zip, :lat, :lon, :vendor_count]
        attributes.each do |attribute|
          expect(market[:attributes]).to have_key(attribute)
        end

        expect(market.dig(:attributes, :name)).to eq("2nd Street Farmers' Market")
        expect(market.dig(:attributes, :street)).to eq("194 second street")
      end
    end
    describe 'all_vendors' do
      it 'returns results for all vendors for a given market', :vcr do
        vendors = MarketService.all_vendors(322474)[:data]
        
        attributes = [:name, :description, :contact_name, :contact_phone, :credit_accepted]
        vendors.each do |vendor|
          expect(vendor).to have_key(:id)
          attributes.each do |attribute|
            expect(vendor[:attributes]).to have_key(attribute)
          end
        end

        expect(vendors.dig(0, :attributes, :name)).to eq("Orange County Olive Oil")
        expect(vendors.dig(0, :attributes, :description)).to eq("Handcrafted olive oil made from locally grown olives")
      end
    end
  end
end