
module StrategyTester
  class Trade < JSONConvertible
    def initialize opening_state
      @id = SecureRandom.uuid
      @opening_state = opening_state
    end

    def set_closing_state closing_state
      @closing_state = closing_state

      self
    end

    def isBuy
      false
    end

    def isSell
      false
    end

    def hash
      @id.hash
    end
  end
end