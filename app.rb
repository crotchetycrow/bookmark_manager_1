require 'sinatra'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

  post '/add' do
    Bookmarks.add(params[:url])
    redirect '/bookmarks'
  end

   run! if app_file == $0
end
