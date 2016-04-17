def stock_picker (input)
  
end


price_array = gets.chomp
price_array = price_array.split(", ")
price_array.each_index do |x|
  price_array[x] = price_array[x].to_i
end
