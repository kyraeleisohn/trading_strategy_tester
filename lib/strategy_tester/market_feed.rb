module StrategyTester
  class MarketFeed
    def initialize dao
      @states = dao.get_all
    end

    def each
      @states.each do |state|
        stateObject = MarketStatus.new(
            state["Local time".to_sym],
            state[:Ask],
            state[:Bid],
            state[:AskVolume],
            state[:BidVolume],
        )
        yield stateObject
      end
    end
  end
end