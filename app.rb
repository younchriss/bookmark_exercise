require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  # get '/' do
  #   'Bookmark Manager'
  # end

  get '/bookmarks' do
    @bookmarks = Bookmark.list
    erb :index
  end

  get '/new' do
    erb :'/new'
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end