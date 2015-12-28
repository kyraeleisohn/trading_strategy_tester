Gem::Specification.new do |s|
  s.name        = "strategy_tester"
  s.version     = "0.0.1"
  s.licenses    = ["MIT"]
  s.summary     = "Trade streategy tester."
  s.description = "Much longer explanation of the example!"
  s.authors     = ["Milan Kaszas"]
  s.email       = "milan.kaszas@gmail.com"

  s.executables = ["strategy_tester"]
  s.files       = [
      "lib/application.rb",
      "lib/config.yml",
      "lib/exchange.rb",
      "lib/strategy_tester/market_feed.rb",
      "lib/strategy_tester.rb"
  ]
  s.add_runtime_dependency "mongo", ["~> 2.1"]
  s.add_runtime_dependency "activesupport", [">= 0"]
end