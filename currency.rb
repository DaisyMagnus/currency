class Currency
  attr_reader :amount, :currency_code
  def initialize (amount, currency_code = " ")
    @amount = amount.to_s
    @currency_code = currency_code.to_s
  end

def symbol_conversion
    @codes = {"¢"=> "GHC", "$"=> "USD", "¥" => "JPY"}
    @codes[amount[0]]
    p amount[0].replace(@codes[amount[0]]) + amount[1..-1]
end

def ==(other)
  if self.amount == other.amount  && self.currency_code == other.currency_code
    return true
  else
    false
  end
end


def +(other)
   if self.currency_code == other.currency_code
     return Currency.new(currency_code, self.amount + other.amount )
   else
     puts "DifferentCurrencyCodeError"
   end
end


def -(other)
   if self.currency_code == other.currency_code
     return Currency.new(currency_code, self.amount.to_f - other.amount.to_f)
   else
     puts "DifferentCurrencyCodeError"
   end
end

def *(other)
   if self.currency_code == other.currency_code
     return Currency.new(currency_code, self.amount.to_f * other.amount.to_f)
   else
     puts "DifferentCurrencyCodeError"
   end
end


end
