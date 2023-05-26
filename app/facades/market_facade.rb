class MarketFacade
  def all_markets
    markets = []
    MarketService.all_markets[:data].each do |market|
      markets << Market.new(market)
    end
    markets
  end

  def find_market(id)
    data = MarketService.find_market(id)
    Market.new(data)
  end
end