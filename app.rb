require 'sinatra/base'
require 'rack/flash'
require 'haml'

module Sin
  class App < Sinatra::Base
    set :views, 'views'
    set :root, File.dirname(__FILE__)

    require_relative 'routes/base'

    use Routes::Base
  end
end
