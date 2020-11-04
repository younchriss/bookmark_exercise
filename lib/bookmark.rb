require 'pg'

class Bookmark
    def list
        connection = PG.connect(dbname: 'bookmark_manager')
        result = connection.exec('SELECT * FROM bookmarks;')
        result.map { |bookmark| bookmark['url'] }
        #@bookmarks = ["https://www.google.com"]
    end
end