require 'rails_helper'


feature "Static Pages" do

  feature "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on rail tutorial sample app | Home")
    end

  end

end


feature "Help page" do
  it "should have the content 'Help' " do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
  end
  it "should have the right title" do
    visit '/static_pages/help'
    expect(page).to have_title("Ruby on rail tutorial sample app | Help")
  end
end

feature "About page" do
  it "should have the content 'About us' " do
    visit static_pages_about_path
    expect(page).to have_content('About us')
  end
  it "should have the right title" do
    visit '/static_pages/about'
    expect(page).to have_title("Ruby on rail tutorial sample app | About")
  end
end

feature "Contact Page" do
  it "should have the content 'Contact us' " do
    visit '/static_pages/contact'
    expect(page).to have_title("Ruby on rail tutorial sample app | Contact")
  end
end




