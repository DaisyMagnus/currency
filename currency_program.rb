require "./currency_converter.rb"
require "./currency.rb"

money = CurrencyConverter.new
p money.convert_to_usd("¢6000.00")
currency_converter = CurrencyConverter.new
currency = Currency.new(5, :JPY)
p currency_converter.convert(currency, :JPY)
cash = CurrencyConverter.new
cash.convert_to_requested(6, :USD, :JPY)
