require 'spec_helper'

describe "Describe XML device" do

  before(:all) do
    @xml_geo = GeoLandingPage.new
  end

  it "should have first device to have a name 'hub_ethernet_cosy'" do
    expect(@xml_geo.get_first_name).to eq("hub_ethernet_cosy")
  end

  it "should have last device to have name 'invalid'" do
    expect(@xml_geo.get_last_name).to eq("invalid")
  end

  it "should have a total of 31 devices" do
    expect(@xml_geo.get_total_number_devices).to eq(31)
  end

  it "should have a interger for the 7th device value" do
    expect(@xml_geo.get_value.to_i).to be_kind_of(Integer)
  end

  it "should have for the last device 'invalid' a value > 100 " do
    expect(@xml_geo.get_last_device_value).to be > 100
  end

  it "should return any random device notes as a string" do
    expect(@xml_geo.get_notes).to be_kind_of(String)
  end

end
