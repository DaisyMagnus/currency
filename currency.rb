class Currency
  def initialize (amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end


def amount
  @amount
end

def currency_code
  @currency_code
end


currency = Currency.new(2, "USD")
puts currency.amount

end
