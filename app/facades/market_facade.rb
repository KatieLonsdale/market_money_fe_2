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

  def all_vendors(id)
    vendors = []
    MarketService.all_vendors(id)[:data].each do |vendor|
      vendors << Vendor.new(vendor)
    end
    vendors
  end
end