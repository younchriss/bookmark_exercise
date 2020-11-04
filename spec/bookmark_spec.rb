require './lib/bookmark'

describe Bookmark do

    describe '.list' do
        it 'lists all bookmarks' do
            bookmarks = Bookmark.new
            expect(bookmarks.list).to include "https://www.google.com"
        end
    end

end