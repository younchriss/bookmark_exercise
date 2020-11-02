require './lib/hello_world'

feature 'Test driving index page' do
  scenario 'shows test text' do
    visit('/')
    expect(page).to have_content 'test'
  end
end
