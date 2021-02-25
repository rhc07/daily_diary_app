require 'sinatra/base'

class Diary < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/add' do
    @title = params[:title]
    @diary_entry = params[:diary_entry]
    erb :diary_entries
  end

  # get '/diary_entries' do
  #   erb :diary_entries
  # end


run! if app_file == $0
end
