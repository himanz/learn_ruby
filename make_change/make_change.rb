class Changer
	def self.make_change(change)
    coins = []
    amount = change
    while amount > 0
      if amount >= 25
    	  coins << 25
    	  amount -= 25
    	elsif amount >= 10
    		coins << 10
    		amount -= 10
    	elsif amount >= 5
    		coins << 5
    		amount -= 5
    	else
    		coins << 1
    		amount -= 1
      end
    end
    coins
	end
end