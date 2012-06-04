module ApplicationHelper
	#Returns whether there is a costume page title.			#Comment or Documentation
	def full_title(page_title)								#Method definition
		base_title = "Obscura"									#Variable definition
		if page_title.empty?									#Boolean test
			base_title												#Implicit return
		else
			"#{base_title} | #{page_title}"							#String interpolation
		end														#End of Boolean test
	end 													#End of method definition
end