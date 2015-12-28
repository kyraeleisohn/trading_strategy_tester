module StrategyTester
  class ClosedTradeLogger
    def initialize dao
      @dao = dao
    end

    def log tradeList
      tradeList.each {|trade| @dao.write trade}
    end
  end
end