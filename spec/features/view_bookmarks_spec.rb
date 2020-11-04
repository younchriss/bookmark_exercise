require 'pg'

feature 'View bookmarks' do

  #feature test for viewing a bookmark
  scenario 'View bookmarks' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.google.com');")
    
    visit ('/bookmarks')

    expect(page).to have_content 'https://www.google.com'
  end

end