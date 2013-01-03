require 'open-uri'

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

	def gravatar_pro
      user = 'jose.padilla.88@gmail.com'
      options = { size: 100 }
    	gravatar_id = Digest::MD5::hexdigest(user.downcase)
    	size = options[:size]
    	gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    	image_tag(gravatar_url, alt: user, class: "gravatar")
  	end

  	def gravatar_info
      user = 'jose.padilla.88@gmail.com'
  		gravatar_id = Digest::MD5::hexdigest(user.downcase)
  		gravatar_url = "https://secure.gravatar.com/#{gravatar_id}.xml"
  		xmlresult = ActiveSupport::XmlMini.parse(OpenURI.open_uri(gravatar_url).read)
  		xmlresult["response"]["entry"]["name"]["formatted"]["__content__"]
  	end
end