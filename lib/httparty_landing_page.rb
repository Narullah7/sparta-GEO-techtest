require 'httparty'
require 'json'

class GeoLandingPage
  include HTTParty

  attr_accessor :landing_page

  base_uri "http://localhost:9292"

  def test_landing_page
    @landing_page = JSON.parse(self.class.get("/").body)
  end



end
#
x = GeoLandingPage.new
puts x.test_landing_page
