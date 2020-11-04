require './lib/bookmark'

describe Bookmark do

    describe '.list' do
        it 'lists all bookmarks' do
            connection = PG.connect(dbname: 'bookmark_manager_test')

            connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.google.com');")

            bookmarks = Bookmark.list
            expect(bookmarks).to include ("https://www.google.com")
        end
    end

end