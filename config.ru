require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/geotest_controller.rb'

use Rack::MethodOverride

run GeoTechTest
