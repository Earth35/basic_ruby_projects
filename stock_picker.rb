def stock_picker (input)
  max_income = 0
  buying_day = nil
  selling_day = nil
  0.upto(input.length-2) do |i|
    current_price = input[i]
	(i+1).upto(input.length-1) do |j|
	  profit = input[j] - input[i]
	  if (profit > max_income)
	    buying_day = i
		selling_day = j
		max_income = profit
	  end
	end
  end
  return [buying_day, selling_day]
end

puts "Enter prices for each day separated by commas (Default example: 17,3,6,9,15,8,6,1,10)"
price_array = gets.chomp
if price_array == ""
  price_array = [17,3,6,9,15,8,6,1,10]
else
  price_array = price_array.split(",")
  price_array.each_index do |x|
    price_array[x] = price_array[x].to_i
  end
end
puts "Best days to buy & sell: #{stock_picker(price_array)}"