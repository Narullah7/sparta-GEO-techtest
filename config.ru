require 'sinatra'
require 'httparty'
require 'json'
require 'sinatra/reloader' if development?
require_relative './controllers/geotest_controller.rb'
require_relative './models/geotest_xml.rb'

use Rack::MethodOverride

run GeoTechTest
