def encrypt
	puts "Insert the sentence to encrypt:"
	sentence = gets.chomp
	puts "How many shifts?"
	shifts = gets.chomp.to_i
	chars = sentence.split('')
	chars_enc = chars.map do |char| 
	case char.ord
		when 65..122  then (char.ord + shifts).chr
		when 122..256 then (char.ord + shifts - 26).chr
		else char
	end
	end
	string_enc = chars_enc.join
	puts string_enc 
end

def decrypt
	puts "Insert the sentence to decrypt:"
	sentence = gets.chomp
	puts "How many shifts?"
	shifts = gets.chomp.to_i
	chars = sentence.split('')
	chars_enc = chars.map do |char| 
	case char.ord
		when 65..122  then (char.ord - shifts).chr
		when 122..256 then (char.ord - shifts + 26).chr
		else char
	end
	end
	string_enc = chars_enc.join
	puts string_enc 
end

puts "╔═╗┌─┐┌─┐┌─┐┌─┐┬─┐  ┌─┐┬┌─┐┬ ┬┌─┐┬─┐
║  ├─┤├┤ └─┐├─┤├┬┘  │  │├─┘├─┤├┤ ├┬┘
╚═╝┴ ┴└─┘└─┘┴ ┴┴└─  └─┘┴┴  ┴ ┴└─┘┴└─"
puts
puts "Options:"
puts "1) Encrypt a message"
puts "2) Decrypt a message"
puts
puts "Choose an option:"
choice = gets.chomp.downcase

case choice
	when "1","1)","encrypt" then encrypt
	when "2","2)","decrypt" then decrypt
	else puts "Choice not accepted"
end