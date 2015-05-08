require "./currency.rb"

currency = Currency.new(2, "USD")


foo = Currency.new(3,"JPN")
p currency
fee = Currency.new(3, "USD")
p fee
p foo
p (fee == foo)
p currency + fee
