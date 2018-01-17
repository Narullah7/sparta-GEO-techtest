require 'nokogiri'
require 'json'

class DeviceXml

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('././mini-schema.xml'))
  end

  def get_all_data
    @menu
  end

  def get_all_devices
    @menu.search('device')
  end

  def get_name
    get_all_devices.element_children[0]
  end

  def get_value
    get_all_devices.element_children[1]
  end

  def get_notes
    get_all_devices.element_children[2]
  end

end

# x=DeviceXml.new
# puts x.search_parameter("ct")
