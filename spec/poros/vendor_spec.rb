require 'rails_helper'

RSpec.describe Vendor do
  before(:each) do
    data = {
      "id": "55297",
      "type": "vendor",
      "attributes": {
          "name": "Orange County Olive Oil",
          "description": "Handcrafted olive oil made from locally grown olives",
          "contact_name": "Syble Hamill",
          "contact_phone": "1-276-593-3530",
          "credit_accepted": false
      }
    }
    @vendor = Vendor.new(data)
  end

  describe 'initialize' do
    it 'exists and has attributes' do
      expect(@vendor).to be_a(Vendor)
      expect(@vendor.id).to eq(55297)
      expect(@vendor.name).to eq("Orange County Olive Oil")
      expect(@vendor.description).to eq("Handcrafted olive oil made from locally grown olives")
      expect(@vendor.contact_name).to eq("Syble Hamill")
      expect(@vendor.contact_phone).to eq("1-276-593-3530")
      expect(@vendor.credit_accepted).to eq(false)
    end
  end

  describe 'instance methods' do
    describe 'credit_accepted?' do
      it 'returns yes or no depending of if vendor accepts credit' do
        data = {
          "id": "55297",
          "type": "vendor",
          "attributes": {
              "name": "Orange County Olive Oil",
              "description": "Handcrafted olive oil made from locally grown olives",
              "contact_name": "Syble Hamill",
              "contact_phone": "1-276-593-3530",
              "credit_accepted": true
          }
        }
        vendor_2 = Vendor.new(data)
        expect(@vendor.credit_accepted?).to eq("NO")
        expect(vendor_2.credit_accepted?).to eq("YES")
      end
    end
  end
end