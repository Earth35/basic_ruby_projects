def substrings (string, dictionary)
  string.downcase!
  wc_dict = {}
  dictionary.each do |item|
    item_count = 0
	scan_result = string.scan(item);
	scan_result = scan_result.length
	if (scan_result > 0)
	  wc_dict[item] = scan_result
	end
  end
  return wc_dict
end
phrase = "The brown (placeholder!) fox jumped over the lazy (another one!) dog."
dictionary = ["the", "he", "brown", "row", "fox", "ox", "jump", "over", "lazy", "dog", "h", "inflation", "not", "hold", "old", "fold", "mold"]
puts substrings(phrase, dictionary)