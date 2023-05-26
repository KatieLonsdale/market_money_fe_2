require 'rails_helper'

RSpec.describe 'Vendor Show Page' do
  describe "As a visitor, when I visit a vendor's show page" do
    it 'displays the vendor name and information', :vcr do
      visit vendor_path(55297)

      expect(page).to have_content("Orange County Olive Oil")
      expect(page).to have_content("Name: Syble Hamill")
      expect(page).to have_content("Phone: 1-276-593-3530")
      expect(page).to have_content("Credit Accepted? NO")
      expect(page).to have_content("Description: Handcrafted olive oil made from locally grown olives")

    end
  end
end