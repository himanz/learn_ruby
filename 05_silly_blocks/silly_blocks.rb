def reverser
	word = yield
	word = word.split(" ")
	word.each {|x| x.reverse!}
	word.join(" ")
end

def adder(number=1)
	num = yield
	num += number
end

def repeater(n=1, &block)
  n.times &block
end