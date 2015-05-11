class CurrencyConverter
  def initialize
    @codes = {"¢"=> 3.88, "$"=> 1, "¥" => 119.81}
    @codes_to_rates = {GHC: 3.88, USD: 1.0, JPY: 119.81, EUR: 0.89}

  end

  def convert (currency, currency_code)
    if Currency.new(currency, currency_code) == Currency.new(currency, currency_code)
      return Currency.new(currency, currency_code)
    end
  end

  def convert_to_requested (currency, currency_code, requested)
    if (currency_code) != (requested) && currency_code == :USD
      p currency.to_i * @codes_to_rates[requested]
      p requested
    else
      p currency *(@codes_to_rates[requested]/@codes_to_rates[currency_code])
      p requested
    end
  end

#Will take amount that starts with symbol and convert it to USD
  def convert_to_usd (amount)
  #First step, remove the symbol so I have an integer I can work with
    if amount[0].to_f != 0.0
			puts "true"
		else amount.slice(amount[1..-1])
    end
    a = amount.slice(amount[1..-1])
    a = a.to_i
    b = amount.slice(amount[0])
    c = @codes[b]
    p "#{amount} is equal to #{(a/c).to_f.round(2)} US dollars."
  end

end
