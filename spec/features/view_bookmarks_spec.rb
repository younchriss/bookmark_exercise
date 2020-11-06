require 'pg'

feature 'View bookmarks' do

  #feature test for viewing a bookmark
  scenario 'View bookmarks' do
    
    Bookmark.create(url: 'https://www.google.com', title: 'Google')
    
    visit ('/bookmarks')

    expect(page).to have_content ['https://www.google.com', 'Google']
  end

end