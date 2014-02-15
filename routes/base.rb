module Sin
  module Routes
    class Base < Sinatra::Base
      set :views, App.views
      set :root, App.root

      enable :static

      enable :sessions

      use Rack::Flash, :accessorize => [:error, :warning, :info, :success]

      before do
        @flash = flash
      end

      get '/' do
        haml :index
      end
    end
  end
end
