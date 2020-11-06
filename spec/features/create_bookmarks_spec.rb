# As a user
# So I can store bookmark data for later retrieval
# I want to add a bookmark to Bookmark Manager

require 'pg'

feature 'Adding a new bookmark' do
    scenario 'A user can add a bookmark to Bookmark Manager' do
        visit('/new')
        fill_in('url', with: 'https://testbookmark.com')
        fill_in('title', with: 'Test Bookmark')
        click_button('submit')

        expect(page).to have_content ['https://testbookmark.com', 'Test Bookmark']
    end
end