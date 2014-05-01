require 'spec_helper'

feature 'Note' do
  scenario 'add a new note' do
    visit root_path
    expect {
      click_link '書く'
      fill_in 'Title', with: 'Joe'
      click_button '登録する'
    }.to change(Note, :count).by(1)
  end

  scenario 'add a new note without title' do
    visit root_path
    expect {
      click_link '書く'
      click_button '登録する'
    }.not_to change(Note, :count)
  end
end
