
require "./currency_converter.rb"
require "./currency.rb"

currency = Currency.new(22.35, "USD")
usd = Hash.new


#foo = Currency.new(16,"JPN")
#p currency
#fee = Currency.new(5, "USD")
#p fee
#p foo
#p (fee == foo)
#p foo + fee
#p currency * fee
dough = Currency.new("$5.25")
dough.symbol_conversion
#puts "Please enter an amount."
#input = gets.chomp
#input = Currency.new(input)
#input.symbol_conversion
cash = CurrencyConverter.new("¥15.00")
p cash
p cash.symbol_conversion2
