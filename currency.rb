class Currency
  attr_reader :amount, :currency_code
  def initialize (amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end


def ==(other)
  if self.amount == other.amount
    return true
  else
    false
  end
end

def +(other)
  Currency.new(@amount + other, @currency_code)
end

end
