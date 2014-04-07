class Timer
  attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		seconds = @seconds % 60
		minutes = @seconds / 60
		hours = minutes / 60
    hour_str = "00"
    minute_str = "00"
    seconds_str = "00"
		if minutes > 60
      minutes = minutes % 60
      if hours > 9
        hour_str = "#{hours}"
      else
      	hour_str = "0#{hours}"
      end

      if minutes > 9
    		minute_str = "#{minutes}"
    	else
    		minute_str = "0#{minutes}"
    	end

    elsif minutes < 60
    	if minutes > 9
    		minute_str = "#{minutes}"
    	else
    		minute_str = "0#{minutes}"
    	end
    end

    if seconds > 9
    	seconds_str = "#{seconds}"
    else
    	seconds_str = "0#{seconds}"
    end

    "#{hour_str}:#{minute_str}:#{seconds_str}"
		
		
	end
end