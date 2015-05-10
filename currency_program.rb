
require "./currency_converter.rb"
require "./currency.rb"


# cash = Currency.new("$22.35")
# cash2 = Currency.new("¢22.35")
# p cash == cash2
# p ("$22.55" + "$33.55").to_i

# x = CurrencyConverter.new("¢44.00")
# p x.symbol_conversion2

#cash3 = CurrencyConverter.new(cash3)
#p cash3.currency_conversion_to_usd


# scratch = gets.chomp.to_s
# scratch = Currency.new(scratch)
# moolah = scratch.symbol_conversion #=> GHC56
# dough = CurrencyConverter.new(moolah)
# p moolah
# p dough
# p dough.currency_conversion_to_usd
# #p dough.currency_conversion_to_usd #raises an error
money = Currency.new()
