require 'spec_helper'

describe "Static pages" do

  subject { page }

  #Removes some of the repetitive tests.
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  #Testing the Welcome page while using the shared_examples_for method.
  describe "Welcome page" do
    #Make sure to visit the path before each test.
    before { visit root_path }

    #Assign some variables so that the shared_examples_for method can use them.
    let(:heading) {'Jose Padilla'}
    let(:page_title) {''}

    #Begin testing the Welcome page.
    it_should_behave_like "all static pages"
    it { should_not have_selector('title', text: '| Jose Padilla') }
  end

  #Testing the Tutorials page without using the shared_examples_for method.
  describe "Tutorials page" do
    #Make sure to visit the path before each test.
    before { visit tutorials_path }

    #Tests that the header contains 'Tutorials Page'
  	it { should have_selector('h1', text: 'Tutorials Page') }
    #Tests that the title contains 'Obscura | Tutorials'
    it { should have_selector('title', text: full_title('Tutorials')) }
  end

  #Testing the Contact page.
  describe "Contact page" do
    #Make sure to visit the path before each test.
    before { visit contact_path }

    #Tests that the header contains 'Contact'
    it { should have_selector('h1', :text => 'Contact') }
    #Tests that the title contains 'Obscure | Contact'
    it { should have_selector('title', :text => full_title('Contact')) }
    #Tests that the page has a div class called card
    it { should have_selector('div.card') }
  end

  #Another way of creating the above tests.
  #Testing the About page.
  describe "About page" do

  	it "should have the content 'About Me'" do
  		visit about_path #used to be '/static_pages/about'
  		page.should have_content('About Me')
  	end

    it "should have the title 'About Me'" do
      visit about_path
      page.should have_selector('title', :text => full_title('About Me'))
    end
  end

  #Testing that the links work.
  it "should have the correct links to the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Me')
    click_link "Home"
    page.should have_selector 'title', text: full_title('')
    click_link "Obscura"
    page.should have_selector 'title', text: full_title('')
    click_link "Tutorials"
    page.should have_selector 'title', text: full_title('Tutorials')
  end
end
