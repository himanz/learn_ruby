def echo(word)
	"#{word}"
end

def shout(word)
	"#{word.upcase}"
end

def repeat(word, num=2)
	new_word = word
	(num - 1).times do 
		new_word += " #{word}"
  end
  new_word
end

def start_of_word(word, num)
	word[0..num-1]
end

def first_word(sentence)
	split_sentence = sentence.split(" ")
	split_sentence[0]
end

def titleize(word)
	split_words = word.split(" ")
	split_words.each do |x| 
    if x == "and" || x == "over" || x == "the"
		  next
		else
			x.capitalize!
		end
	split_words[0].capitalize!	
	end
	split_words.join(" ")
end