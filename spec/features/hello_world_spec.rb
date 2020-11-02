require './lib/hello_world'

feature 'Test driving index page' do
  scenario 'shows test text' do
    visit('/')
    expect(page).to have_content 'Bookmark Added!'
  end
end

feature 'View bookmarks' do
  scenario 'list bookmarks' do
    visit('/')
    fill_in 'bookmark', with: 'www.google.com'
    click_button 'Add Bookmark'
    expect(page).to have_content 'www.google.com'
  end
end