require 'spec_helper'

describe "StaticPages" do
  describe "HomePages" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "Should have the content 'About us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
