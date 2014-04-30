require 'spec_helper.rb'

feature 'Home' do
  scenario "click site's logo" do
    visit root_path
    click_link 'nijigen-mansion'

    expect(page).to have_content 'nijigen-mansion'
  end
end
    
