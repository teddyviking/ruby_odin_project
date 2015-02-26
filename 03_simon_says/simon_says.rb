def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(s, n=2)
	said = s + " "
	repetition = (said * n).strip
end

def start_of_word(word, n)
	word[0...n]
end

def first_word(s)
	s.split.first
end

def titleize(s)
	words = s.split.map do |word|
		little_words=["and","over","the"]
		if little_words.include?(word)
			word
		else
			word.capitalize
		end
	end
	words.first.capitalize!
	words.join(' ')
end	