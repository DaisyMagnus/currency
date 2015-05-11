# Currency and Currency Converter Classes

##To run this program, create objects of either classes.

#### The currency objects must be initialized with certain parameters.  Various methods can be called on the objects, such as ==, !=.  The == method will return false if the currency codes are not the same.

#### The methods within the Currency_converter class include a method which will take in a currency code and an amount and return a new currency code and amount based upon recent exchange rates

#### There is one obvious bug in this program. It is located within the currency.rb file.  The subtraction, multiplication, and symbol_conversion methods operate on amounts which start with a currency symbol, ie "¥56.44" instead of (54, "JPY")
