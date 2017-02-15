require 'spec_helper'


describe "StaticPages" do
  before{visit root_path}
  subject { page }
  describe "HomePages" do
    it {should have_content('Sample App')}
    it {should have_title(full_title(''))}
    
  end

  describe "help" do
    it "should have the content 'Help'" do
      visit help_path#'/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "about us" do
    it "Should have the content 'About us'" do
      visit about_path#'/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

   
end
