module StrategyTester
  class ClosedTradeDao < MongoDao
    def write trade
      @collection.insert_one trade.to_hash
    end
  end
end