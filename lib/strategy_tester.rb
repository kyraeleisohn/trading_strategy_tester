PROJECT_ROOT_DIR = File.dirname(__FILE__)
$:.unshift File.expand_path(PROJECT_ROOT_DIR)

require 'yaml'
require 'mongo'
require 'securerandom'
require 'json'

module StrategyTester
  autoload :MarketFeedDao, 'strategy_tester/market_feed_dao'
  autoload :MarketFeed, 'strategy_tester/market_feed'
  autoload :ExchangeBuilder, 'strategy_tester/exchange_builder'
  autoload :Exchange, 'strategy_tester/exchange'
  autoload :MarketStatus, 'strategy_tester/market_status'
  autoload :Strategy, 'strategy_tester/strategy'
  autoload :StrategyResponseHandler, 'strategy_tester/strategy_response_handler'
  autoload :TradeList, 'strategy_tester/trade_list'
  autoload :Trade, 'strategy_tester/trade'
  autoload :StrategyResponse, 'strategy_tester/strategy_response'
  autoload :BuyTrade, 'strategy_tester/buy_trade'
  autoload :SellTrade, 'strategy_tester/sell_trade'
  autoload :MongoDao, 'strategy_tester/mongo_dao'
  autoload :ClosedTradeDao, 'strategy_tester/closed_trade_dao'
  autoload :ClosedTradeLogger, 'strategy_tester/closed_trade_logger'
  autoload :JSONConvertible, 'strategy_tester/json_convertible'

  class Application
    def initialize
      config = YAML.load_file(PROJECT_ROOT_DIR + '/strategy_tester/config/config.yml')

      exchangeBuilder = ExchangeBuilder.new
      @exchange = exchangeBuilder.get config
    end

    def run
      @exchange.run
    end
  end
end