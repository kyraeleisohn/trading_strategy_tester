
module StrategyTester
  class MarketFeedDao < MongoDao
    def get_all
      @collection.find
    end
  end
end