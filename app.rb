require 'sinatra/base'

class Diary < Sinatra::Base

  # get '/' do
  #   'Hello World'
  # end

  get '/' do
    erb :index
  end

  post '/add' do
    @diary_entry = params[:diary_entry]
  end

  get '/add' do
    erb :add
  end


run! if app_file == $0
end
