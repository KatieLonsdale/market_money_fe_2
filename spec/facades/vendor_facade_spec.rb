require 'rails_helper'

RSpec.describe VendorFacade do
  describe 'initialize' do
    it 'exists' do
      vf = VendorFacade.new
      
      expect(vf).to be_a(VendorFacade)
    end
  end

  describe 'find_vendor' do
    it 'creates a vendor with given id', :vcr do
      vf = VendorFacade.new

      expect(vf.find_vendor(55297)).to be_a(Vendor)
    end
  end
end