require './lib/bookmark'

describe Bookmark do

    describe '.list' do
        it 'lists all bookmarks' do
            connection = PG.connect(dbname: 'bookmark_manager_test')

            connection.exec("INSERT INTO bookmarks (url, title) VALUES ('https://www.google.com', 'Google');")

            bookmarks = Bookmark.list
            expect(bookmarks).to include ["https://www.google.com", "Google"]
        end
    end

    describe '.create' do
        it 'Creates a new bookmark' do
            Bookmark.create(url: "https://www.testbookmark.com", title: "Test Bookmark")

            expect(Bookmark.list).to include ["https://www.testbookmark.com", "Test Bookmark"]
        end
    end

end