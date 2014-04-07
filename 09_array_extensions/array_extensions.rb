class Array
	def sum
		if [] == nil
			0
		else
	    self.inject(0){|sum, x| sum + x}
	  end
	end

  def square
  	if [] == nil
  		[]
  	else
  		self.map {|num| num ** 2}
  	end
  end

  def square!
  	self.map! {|num| num ** 2}
  end
end