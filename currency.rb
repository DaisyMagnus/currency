class Currency
	def initialize(amount, currency_code = "")
		@amount = amount
		@Currency_code = currency_code
	end

	def check_for_code
		if @amount[0].to_f != 0.0
			puts "true"
		else p @amount.slice(@amount[1..-1])

		end
	end

	def ==(other)
  		if @amount == other
    		 true
  		else
    		false
  		end
	end

	def !=(other)
  		if @amount != other
    		 true
  		else
    		false
  		end
	end

	def +(other)
   		if @amount.to_s[0] == other.to_s[0]
   		  p @amount.to_s[0] + (@amount.slice(@amount[1..-1]).to_i + other.slice(other[1..-1]).to_i).to_s
   		end
   		p "DifferentCurrencyCodeError"

    end

  def -(other)
   	if @amount.to_s[0] == other.to_s[0] && @amount > other
   		  p @amount.to_s[0] + (@amount.slice(@amount[1..-1]).to_i - other.slice(other[1..-1]).to_i).to_s
   	end
   		p "DifferentCurrencyCodeError"

  def *(other)
    if @amount.to_s[0] == other.to_s[0]
      @amount.to_s[0] + (@amount.slice(@amount[1..-1]).to_i * other.slice(other[1..-1]).to_i).to_s
    end
  end

def symbol_conversion
    @codes = {"¢"=> "GHC", "$"=> "USD", "¥" => "JPY"}
    @codes[amount[0]]
    p amount[0].replace(@codes[amount[0]]) + amount[1..-1]
end

end
