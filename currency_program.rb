require "./currency.rb"

currency = Currency.new(2, "USD")
p currency

foo = Currency.new(3,"USD")
fee = foo + 2
p fee
p (fee == foo)
