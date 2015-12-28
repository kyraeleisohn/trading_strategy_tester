
module StrategyTester
  class ExchangeBuilder
    def get config
      market_feed_dao = MarketFeedDao.new(
          config['mongo']['exchange_feed']['host'],
          config['mongo']['exchange_feed']['database'],
          config['mongo']['exchange_feed']['collection']
      )
      market_feed = MarketFeed.new market_feed_dao
      strategy = Strategy.new
      strategy_response_handler = StrategyResponseHandler.new

      closed_trade_dao = ClosedTradeDao.new(
          config['mongo']['trade_log']['host'],
          config['mongo']['trade_log']['database'],
          config['mongo']['trade_log']['collection']
      )
      closed_trade_logger = ClosedTradeLogger.new closed_trade_dao

      Exchange.new(market_feed, strategy, strategy_response_handler, closed_trade_logger)
    end
  end
end