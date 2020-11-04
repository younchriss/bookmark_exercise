require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  # get '/' do
  #   'Bookmark Manager'
  # end

  get '/bookmarks' do
    @bookmarks = Bookmark.new.list
    # erb :index
  end

  run! if app_file == $0
end