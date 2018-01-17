require 'nokogiri'

class GeoTechTest < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  get '/' do
    @devices = Nokogiri::XML(File.open('././mini-schema.xml'))
    erb :'geotechtest/index'
  end

  get '/device-names' do
    @devices = Nokogiri::XML(File.open('././mini-schema.xml'))
    @searching = params[:device_search]
    erb :'geotechtest/search'
  end





end
