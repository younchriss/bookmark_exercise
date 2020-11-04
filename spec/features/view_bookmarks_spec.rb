feature 'View bookmarks' do

  #feature test for viewing a bookmark
  scenario 'View bookmarks' do
    #visit the bookmarks page
    visit ('/bookmarks')
    #The bookmark below should appear in the page
    expect(page).to have_content 'https://www.google.com'
  end

end