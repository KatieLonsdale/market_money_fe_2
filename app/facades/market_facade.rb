class MarketFacade
  def all_markets
    markets = []
    MarketService.all_markets[:data].each do |market|
      markets << Market.new(market)
    end
    markets
  end

  # def more_info(id)
  #   Market
  # end
end