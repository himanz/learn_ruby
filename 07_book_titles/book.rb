class Book
  attr_reader :title
  
  def initialize(title=nil)
  	@title = title
  end

	def title=(new_title)
		non_cap = ["and", "in", "of", "the", "a", "an"]
		split_title = new_title.split(" ")
		split_title.each do |x| 
			if non_cap.include? x
				next
			else
				x.capitalize!
			end
		end
		split_title[0].capitalize!
		title = split_title.join(" ")
		@title = title
	end
end