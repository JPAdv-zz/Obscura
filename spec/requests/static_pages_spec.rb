require 'spec_helper'

describe "Static pages" do

  #If I want to change the title, change the string.
  let(:base_title) {"Obscura"}

  describe "Welcome page" do

    it "should have the h1 'Welcome!'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Welcome!')
    end

    it "should have the base title 'Obscura'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Obscura')
    end

    it "should not have a costume title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

  	it "should have the h1 'Help Page'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help Page')
  	end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "About page" do

  	it "should have the content 'About Me'" do
  		visit '/static_pages/about'
  		page.should have_content('About Me')
  	end

    it "should have the title 'About Me'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "#{base_title} | About Me")
    end
  end
end