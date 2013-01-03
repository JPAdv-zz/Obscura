require 'spec_helper'

describe "Slideshows" do
  
	describe "Images" do
		it "should have the slides div for the slideshow." do
			visit root_path
			page.should have_selector 'div#slides'
		end
	end
end
