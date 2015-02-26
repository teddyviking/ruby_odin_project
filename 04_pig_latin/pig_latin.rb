def translate(s)
	vowels = ["a", "e", "i", "o", "u"]
	output = []

	s.split(' ').each do |word|
		if vowels.include?(word[0])
			output << word + "ay"
		elsif vowels.include?(word[1]) && (word[0] || word[1]) != "q"
			output <<  word[1..-1] + word[0] + "ay"
		elsif !vowels.include?(word[2]) && word[1] != "q"
			output << word[3..-1] + word[0..2] + "ay"
		elsif !vowels.include?(word[1]) && word[1] != "q"
			output <<  word[2..-1] + word[0..1] + "ay"
		elsif word[0] == "q"
			output << word[2..-1] + word[0..1] + "ay"
		else 
			output << word[3..-1] + word[0..2] + "ay"
		end
	end

	output.join(' ')
end