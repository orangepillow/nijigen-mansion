require 'spec_helper'

feature 'Note' do
  scenario 'add a new note' do
    visit root_path
    expect {
      click_link '書く'
      fill_in 'Title', with: 'Diary'
      fill_in 'Author', with: 'Joe'
      fill_in 'Content', with: 'Lorem ipsum'
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

  scenario '許可された拡張子以外のファイルをアップロードする' do
    visit notes_new_path
    fill_in 'Title', with: 'Diary'
    fill_in 'Content', with: 'Lorem ipsum'
    attach_file 'Picture', "#{Rails.root}/README.md"
    click_button '登録する'
    expect(page).to have_content('error')
  end
end
