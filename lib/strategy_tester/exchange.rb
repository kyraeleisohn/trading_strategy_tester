module StrategyTester
  class Exchange
    def initialize(feed, strategy, response_handler, closed_trade_logger)
      @feed = feed
      @strategy = strategy
      @response_handler = response_handler
      @closed_trade_logger = closed_trade_logger
      @open_trades = TradeList.new
    end

    def run
      @feed.each do |market_state|
        response = @strategy.tick(@open_trades, market_state)
        @open_trades = @response_handler.get_all_open_trades(
            @open_trades,
            response
        )
        @closed_trade_logger.log(
            @response_handler.get_new_closed_trades(response)
        )
      end
    end
  end
end