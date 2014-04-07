def translate(word)
	vowels = %w(a e i o u)
	cons = %w(b c d f g h j k l m n p q r s t v w x y z)
	if vowels.include?(word[0])
		word << "ay"
	elsif cons.include?(word[0]) && cons.include?(word[1])
		word = word[2..-1] + word[0..1] + "ay"
	else
		word = word[1..-1] + word[0] + "ay"
	end
	word
end