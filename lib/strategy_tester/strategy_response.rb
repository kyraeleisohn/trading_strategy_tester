
module StrategyTester
  class StrategyResponse
    attr_reader :trade_list_to_close, :trade_list_to_open

    def initialize(trade_list_to_close, trade_list_to_open)
      @trade_list_to_close = trade_list_to_close
      @trade_list_to_open = trade_list_to_open
    end
  end
end