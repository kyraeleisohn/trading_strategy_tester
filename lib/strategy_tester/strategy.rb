
module StrategyTester
  class Strategy
    def tick(open_trades, market_state)
      open_trade_list = TradeList.new

      if 0 == Random.new.rand(10) then
        trade = BuyTrade.new market_state
        open_trade_list << trade
      end

      close_trade_list = TradeList.new
      if 0 == Random.new.rand(10) && !open_trades.empty? then
        trade = open_trades.sample
        trade = trade.set_closing_state market_state
        close_trade_list << trade
      end

      StrategyResponse.new(close_trade_list, open_trade_list)
    end
  end
end