require 'sinatra'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello World'
  end

  get '/bookmarks' do
    @list_all = Bookmarks.new.all
    erb(:bookmarks)
  end

   run! if app_file == $0
end
