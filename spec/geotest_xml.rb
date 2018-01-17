require 'nokogiri'

class DeviceXml

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('././mini-schema.xml'))
  end

end
