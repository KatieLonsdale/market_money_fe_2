require 'rails_helper'

RSpec.describe VendorService do
  describe 'find_vendor' do
    it 'returns the api data for a vendor with a given id', :vcr do
      vendor = VendorService.find_vendor(55297)[:data]

      expect(vendor).to have_key(:id)
      expect(vendor.dig(:attributes, :name)).to eq("Orange County Olive Oil")
      expect(vendor.dig(:attributes, :description)).to eq("Handcrafted olive oil made from locally grown olives")
      expect(vendor.dig(:attributes, :contact_name)).to eq("Syble Hamill")
      expect(vendor.dig(:attributes, :contact_phone)).to eq("1-276-593-3530")
      expect(vendor.dig(:attributes, :credit_accepted)).to eq(false)
    end
  end
end