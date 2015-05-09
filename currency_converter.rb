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
      @codes[amount[0]]
     p amount[0].replace(@codes[amount[0]]) + amount[1..-1]
    fee = amount[1..-1].to_i * 14 #has to be another hash in there?
    puts fee.to_s + "USD"
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
