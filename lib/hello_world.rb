require 'sinatra/base'

class HelloWorld < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/bookmark' do
    session[:bookmark] = params[:bookmark]
    #redirect '/bookmark_view'
  end

  run! if app_file == $0
end
