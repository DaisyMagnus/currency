class Currency
  attr_reader :amount, :currency_code
	def initialize(amount, currency_code = "")
		@amount = amount
		@currency_code = currency_code
	end

# #method for removing symbol. use before adding, etc
# 	def check_for_code
# 		if @amount[0].to_f != 0.0
# 			puts "true"
# 		else p @amount.slice(@amount[1..-1])
#     end
# 	end

#method for determining if one equal to the other
def ==(other)
     if self.amount == other.amount && self.currency_code == other.currency_code
       p true
     else
       p false
     end
end

#method for determining inequality
def !=(other)
     if self.amount != other.amount || self.currency_code != other.currency_code
       p true
     else
       p false
     end
end

#method for adding
def !=(other)
     if self.currency_code == other.currency_code
       self.amount + other.amount
     else
       p "Different Currency Codes"
     end
end

#method for subtracting
  def -(other)
   	if @amount.to_s[0] == other.to_s[0] && @amount > other
   		  p @amount.to_s[0] + (@amount.slice(@amount[1..-1]).to_i - other.slice(other[1..-1]).to_i).to_s
   	end
   		p "DifferentCurrencyCodeError"
  end

#method for multiplying
  def *(other)
    if @amount.to_s[0] == other.to_s[0]
      @amount.to_s[0] + (@amount.slice(@amount[1..-1]).to_i * other.slice(other[1..-1]).to_i).to_s
    end
  end

#method for converting symbol to letter codes
def symbol_conversion
    @codes = {"¢"=> "GHC", "$"=> "USD", "¥" => "JPY"}
    @codes[@amount[0]]
    p @amount[0].replace(@codes[@amount[0]]) + @amount[1..-1]
end


end
