
module StrategyTester
  class StrategyResponseHandler
    def get_all_open_trades(open_trades, strategy_response)
      open_trades - strategy_response.trade_list_to_close + strategy_response.trade_list_to_open
    end

    def get_new_closed_trades strategy_response
      strategy_response.trade_list_to_close
    end
  end
end