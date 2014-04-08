class Dictionary
  attr_accessor :entries	

	def initialize
		@entries = {}
	end
  
  def add(animal)
    if animal.class == String
    	animal = {animal => nil}
    end

    animal.each do |name, definition|
    	@entries[name] = definition
    end
  	# splitted = animal.split(" ")
  	# @entries[splitted[0]] = splitted[-1]
  end
end