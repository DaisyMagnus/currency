class CurrencyConverter
  def initialize
    @codes = {"¢"=> "GHC", "$"=> "USD", "¥" => 119.81}
    @usd = {"GHC" => 3.88, "USD" => 1, "JPY"=> 119.81}
    #@amount = amount
  end

  def currency_to_other(amount, currency_code)
    p amount.check_for_code
  end

#
  def convert (amount, currency_code)
  #First step, remove the symbol so I have an integer I can work with
    if amount[0].to_f != 0.0
			puts "true"
		else amount.slice(amount[1..-1])
    end
    a = amount.slice(amount[1..-1])
    a = a.to_i
    b = amount.slice(amount[0])
    c = @codes[b]
    p "#{amount} is equal to #{(a/c).to_f} US dollars."
  end




end
