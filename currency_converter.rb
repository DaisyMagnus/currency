class CurrencyConverter
  attr_reader :amount
  def initialize (amount)
    #@hash = {USD: 1.0, JPY: 119.726}
    #@currency_converter = currency_converter
    #@foreign = foreign.to_s
    @amount = amount.to_s
    #@hash = {"¢"=> "GHC", "$"=> "USD", "¥" => "JPY"}
  end

  def known_object
  @known_object
  end

  def requested
    @requested
  end

#method to convert from foreign currency to us currency
  def symbol_conversion2
     @codes = {"¢"=> "GHC", "$"=> "USD", "¥" => "JPY"}
     @usd = {"GHC" => 3.88, "USD" => 1, "JPY"=> 119.81}
      @codes[amount[0]]
    loo = amount[0].replace(@codes[amount[0]]) + amount[1..-1]
    fee = amount[1..-1].to_s
    foo = @usd[loo[0..2]]
    p loo
    p fee
    p foo
    koo = (fee.to_i * foo).to_s + "USD"
    puts "There you have it! #{loo} is equal to #{koo}."
  end

  #def foreign_to_usd
     #@foreign.symbol_conversion
  #end

end

#def convert_to_known(known_object, requested)
#  if currency code is different for the known_object and the
#    requested
#  return conversion amount + currency code thats the same as the requested_objects
#end

#def three_rates

#end

#{USD: 1.0, EUR: 0.74}


#convert the entry into a string @amount.to_s[0] = symbol then look at the first spot (index zero)
#of the string. zero inex becomes key to look up letter. @hash[symbol]? use strip! to get rid of any white spaces possibly?
#@amount.to_s[0]
#@hash[symbol]
