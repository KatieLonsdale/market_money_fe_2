class MarketsController < ApplicationController
  def index
    @facade = MarketFacade.new
  end

  def show
    
  end
end