require 'pg'

class Bookmark
    def self.list
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'bookmark_manager_test')
        else
            connection = PG.connect(dbname: 'bookmark_manager')
        end

        result = connection.exec('SELECT * FROM bookmarks;')
        result.map { |bookmark| [bookmark['url'], bookmark['title']] }
        #@bookmarks = ["https://www.google.com"]
    end

    def self.create(url:, title:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: "bookmark_manager_test")
        else
            connection = PG.connect(dbname: "bookmark_manager")
        end

        connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")
    end
end