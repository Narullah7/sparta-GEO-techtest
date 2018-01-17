require 'nokogiri'

class DeviceXml

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('././mini-schema.xml'))
  end

  def get_all_devices
    @menu.search('device')
  end

  def get_name
    @menu.search('name')
  end

  def get_value
    @menu.search('value')
  end

  def get_notes
    @menu.search('notes')
  end

end
