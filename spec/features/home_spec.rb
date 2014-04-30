require 'spec_helper.rb'

feature 'Home' do
  scenario "click site's logo" do
    visit root_path
    click_link 'logo'

    expect(page).to have_title 'nijigen-mansion'
  end

  scenario "click help link" do
    visit root_path
    click_link 'ヘルプ'

    expect(page).to have_title 'ヘルプ'
  end
end
    
