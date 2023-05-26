class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new
  end

  def show
    @market = MarketFacade.new.find_market(params[:id])
    @vendors = MarketFacade.new.all_vendors(@market.id)
  end
end