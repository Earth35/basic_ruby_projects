def caesar_cipher (input)
  letters = ('a'..'z').to_a
  input_letters = input.downcase.split(//)
  shift = -5
  out = []
  input_letters.each do |x|
    if (x =~ /\W|\d/)
	  out.push(x)
      next
	else
	  out.push(letters[letters.index(x) + shift])
    end
  end
  return out.join
end

puts "Enter your message."
usr_input = gets.chomp
puts "Encrypted message: #{caesar_cipher(usr_input)}"
