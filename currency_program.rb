require "./currency_converter.rb"
require "./currency.rb"

money = CurrencyConverter.new
p money.convert("¥305.00", "USD")
