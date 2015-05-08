class Currency
  attr_reader :amount, :currency_code
  def initialize (amount, currency_code)
    @amount = amount
    @currency_code = currency_code
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
     return Currency.new(self.amount + other.amount, currency_code)
   else
     puts "DifferentCurrencyCodeError"
   end
end

end
