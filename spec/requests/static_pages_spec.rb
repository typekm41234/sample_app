require 'spec_helper'


describe "StaticPages" do
  before{visit root_path}
  subject { page }
  describe "HomePages" do
    it {should have_content('Sample App')}
    it {should have_title(full_title(''))}

    describe "for signed-in users" do
      let(:user){ FactoryGirl.create(:user)}

      before do
        FactoryGirl.create(:micropost, user: user, content:"Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content:"Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
    end
    
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
