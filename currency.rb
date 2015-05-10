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
end

# class Currency
#   attr_reader :amount, :currency_code
#   def initialize (amount = 0.0, currency_code = " ")
#     @amount = amount.to_i
#     @currency_code = currency_code.to_s
#   end
#
# def symbol_conversion
#     @codes = {"¢"=> "GHC", "$"=> "USD", "¥" => "JPY"}
#     @codes[amount[0]]
#     p amount[0].replace(@codes[amount[0]]) + amount[1..-1]
# end
#
# def ==(other)
#   if self.amount == other.amount  && self.currency_code == other.currency_code
#     return true
#   else
#     false
#   end
# end
#
#
# def +(other)
#    if self.currency_code == other.currency_code
#      return Currency.new(currency_code, self.amount + other.amount)
#    else
#      raise "DifferentCurrencyCodeError"
#    end
# end
#
#
# def -(other)
#    if self.currency_code == other.currency_code
#      return Currency.new(currency_code, self.amount.to_f - other.amount.to_f)
#    else
#      raise "DifferentCurrencyCodeError"
#    end
# end
#
# def *(other)
#    if self.currency_code == other.currency_code
#      return Currency.new(currency_code, self.amount.to_f * other.amount.to_f)
#    else
#      puts "DifferentCurrencyCodeError"
#    end
# end
#
#
#
# end
