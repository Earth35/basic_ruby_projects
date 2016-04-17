def caesar_cipher (input, shift)
  shift = shift.to_i
  letters = ('a'..'z').to_a
  input_letters = input.downcase.split(//)
  out = []
  input_letters.each do |x|
    if (x =~ /\W|\d/)
	  out.push(x)
      next
	else
	  resulting_index = letters.index(x) + shift
	  if (resulting_index > letters.length)
	    resulting_index -= letters.length
	  end
	  out.push(letters[resulting_index])
    end
  end
  return out.join
end

puts "Enter your message."
usr_input = gets.chomp
puts "Enter desired shift value"
usr_shift = gets.chomp
puts "Encrypted message: #{caesar_cipher(usr_input, usr_shift)}"