require 'nokogiri'
require_relative './geotest_xml.rb'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
