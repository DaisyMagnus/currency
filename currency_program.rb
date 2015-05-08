require "./currency.rb"
#require "./currency_converter.rb"
currency = Currency.new(22.35, "USD")


foo = Currency.new(16,"JPN")
p currency
fee = Currency.new(5, "USD")
p fee
p foo
p (fee == foo)
p foo + fee
p currency * fee
dough = Currency.new("$5.25")
dough.symbol_conversion
dough + foo
