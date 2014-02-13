require_relative 'app'

use Rack::ShowExceptions

run Sin::App.new
