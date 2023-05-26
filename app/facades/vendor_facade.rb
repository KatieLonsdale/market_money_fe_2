class VendorFacade
  def initialize; end

  def find_vendor(id)
    vendor = VendorService.find_vendor(id)[:data]
    Vendor.new(vendor)
  end
end