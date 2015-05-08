require "./currency.rb"

currency = Currency.new(22, "USD")


foo = Currency.new(16,"JPN")
p currency
fee = Currency.new(5, "USD")
p fee
p foo
p (fee == foo)
p foo + fee
p foo - fee #=> error
p currency - fee #=> 17
