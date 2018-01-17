require 'nokogiri'

class GeoTechTest < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
      register Sinatra::Reloader
  end

  get '/' do
    @device = DeviceXml.new
    @all_data = @device.get_all_devices
    # Use the model
    content_type :json
    json = []


    @all_data.each do |i|
      hash = {
        :name => i.element_children[0].text,
        :value => i.element_children[1].text,
        :notes => i.element_children[2].text
      }
      json.push(hash)
    end

    json.to_json
    # erb :'geotechtest/index'
  end

  get '/:name' do

    name = params[:device_name]

  end





end
