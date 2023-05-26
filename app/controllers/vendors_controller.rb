class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.new.find_vendor(params[:id])
  end
end