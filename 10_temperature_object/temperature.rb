class Temperature

	def initialize(opts)
		if opts[:f]
		  @f = opts[:f]
		else
			@c = opts[:c]
		end
	end

	def to_fahrenheit
		if @c
			@c * (9/5.0) + 32
		else
		  @f
		end
	end

	def to_celsius
		if @c
			@c
		else
		  (@f - 32) * (5/9.0)
		end
	end

	def self.in_celsius(num)
		temp = Temperature.new({:c => num})
		return temp
	end

	def self.in_fahrenheit(num)
		temp = Temperature.new({:f => num})
		return temp
	end

	
end

class Celsius < Temperature
	def initialize(cel)
		@c = cel
	end
end

class Fahrenheit < Temperature
	def initialize(fahren)
		@f = fahren
	end
end