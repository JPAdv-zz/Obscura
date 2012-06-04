require 'spec_helper'

describe "Static pages" do

  subject { page }

  #Testing the Welcome page.
  describe "Welcome page" do
    #Make sure to visit the path before each test.
    before { visit root_path }

    it { should have_selector('h1', text: 'Welcome!') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

  #Testing the Help page.
  describe "Help page" do
    #Make sure to visit the path before each test.
    before { visit help_path }

    #Tests that the header contains 'Help Page'
  	it { should have_selector('h1', text: 'Help Page') }
    #Tests that the title contains 'Obscura | Help'
    it { should have_selector('title', text: full_title('Help')) }
  end

  #Testing the Contact page.
  describe "Contact page" do
    #Make sure to visit the path before each test.
    before { visit contact_path }

    #Tests that the header contains 'Contact'
    it { should have_selector('h1', :text => 'Contact') }
    #Tests that the title contains 'Obscure | Contact'
    it { should have_selector('title', :text => full_title('Contact')) }
  end

  #Another way of creating the above tests.
  #Testing the About page.
  describe "About page" do

  	it "should have the content 'About Me'" do
  		visit '/static_pages/about'
  		page.should have_content('About Me')
  	end

    it "should have the title 'About Me'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => full_title('About Me'))
    end
  end
end
