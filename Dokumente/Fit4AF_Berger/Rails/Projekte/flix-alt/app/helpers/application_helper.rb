module ApplicationHelper
	def format_total_gross(var)
		if var.flop?
			content_tag(:strong, "FLOP!")
		else
			number_to_currency(var.total_gross, unit: :"€")
		end
	end			
end
