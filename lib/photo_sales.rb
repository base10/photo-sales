require 'sinatra/base'

class PhotoSales < Sinatra::Base
  get '/' do
    'Hello PhotoSales!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
