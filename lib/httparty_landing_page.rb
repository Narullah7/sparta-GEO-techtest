require 'httparty'
require 'json'

class GeoLandingPage
  include HTTParty

  attr_accessor :landing_page

  base_uri "http://localhost:9292"

  def test_landing_page
    @landing_page = JSON.parse(self.class.get("/").body)
  end

  def get_first_name
    test_landing_page[0]['name']
  end

  def get_last_name
    test_landing_page[-1]['name']
  end

  def get_total_number_devices
    test_landing_page.length
  end

  def get_value
    test_landing_page[7]['value']
  end

  def get_last_device_value
    test_landing_page[-1]['value'].to_i
  end

  def get_notes
    test_landing_page[9]['notes']
  end

end
