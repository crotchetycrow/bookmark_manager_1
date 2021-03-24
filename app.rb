require 'sinatra'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
  enable :method_override

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

  post '/add' do
    Bookmarks.add(params[:url], params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    p params
    Bookmarks.delete(params[:id])
    redirect '/bookmarks'
  end

   run! if app_file == $0
end
