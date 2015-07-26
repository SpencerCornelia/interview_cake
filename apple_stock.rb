=begin
Writing coding interview questions hasn't made me rich. Maybe trading Apple stocks will.

I have an array stock_prices_yesterday where:

The indices are the time in minutes past trade opening time, which was 9:30am local time.
The values are the price in dollars of Apple stock at that time.
For example, the stock cost $500 at 10:30am, so stock_prices_yesterday[60] = 500.

Write an efficient algorithm for computing the best profit I could have made from 1 purchase and 1 sale of 1 Apple stock yesterday.

No "shorting"—you must buy before you sell. You may not buy and sell in the same time step (at least 1 minute must pass).
=end 

def best_deal (stock_prices_array)
	largest = 0
	smallest = stock_prices_array[0]

	for item in stock_prices_array
		if item > largest
			largest = item
		end
		if item < smallest
			smallest = item
		end	
	end	
	
	return largest - smallest		

end






def best_deal (stock_prices_array)
	difference = 0

	for outer_time in stock_prices_array
		for inner_time in stock_prices_array
			earlier_time = stock_prices_array.min
			return diff if diff > difference
		end
	end		
end	




def best_deal (stock_prices_array)
	profit = 0
	lowest_price = 0

	for prices in stock_prices_array
		if prices < lowest_price
			return lowest_price
		end
	end

	for prices in stock_prices_array
		difference = prices - lowest_price		
		if difference > profit
			profit = difference
		end
	end

	return profit
end

