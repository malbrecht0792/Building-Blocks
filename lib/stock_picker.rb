def stock_picker(stock_array)

	buy_stock_index = 0
	sell_stock_index = 0
	difference = 0
	
	stock_array.each_with_index do |buy_stock, buy_index|
		
		stock_array[buy_index..-1].each_with_index do |sell_stock, sell_index|
			
			if sell_stock - buy_stock > difference then
				difference = sell_stock - buy_stock
				buy_stock_index = buy_index
				sell_stock_index = sell_index + 1
			end

		end
	
	end

	puts "[#{buy_stock_index}, #{sell_stock_index}]"
	puts difference

end

stock_picker([17,3,6,9,15,8,6,1,10])
