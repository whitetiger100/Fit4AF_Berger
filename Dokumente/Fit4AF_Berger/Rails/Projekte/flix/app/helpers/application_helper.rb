module ApplicationHelper

		def flop_top(var)
		if var.flop?
			"FLOP!"
		else
			number_to_currency(var.total_gross, unit: " € ")
		end 
	end

end
	
