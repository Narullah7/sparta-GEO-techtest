require 'spec_helper'

describe "Describe XML device" do

  before(:all) do
    @xml_geo = DeviceXml.new
  end

  it "should have first device to have a name 'hub_ethernet_cosy'" do
    expect(@xml_geo.get_name[0].text).to eq("hub_ethernet_cosy")
  end

  it "should have last device to have name 'invalid'" do
    expect(@xml_geo.get_name[-1].text).to eq("invalid")
  end

  it "should have a total of 31 devices" do
    expect(@xml_geo.get_all_devices.length).to eq(31)
  end

  it "should all have values return as string" do
    @xml_geo.get_value.each do |i|
      expect(i.text).to be_kind_of(String)
    end
  end

  it "should have values less than 100 except the last device 'invalid'" do
    @xml_geo.get_all_devices.each do |i|
      if i.element_children[0].text === "invalid"
        expect(i.element_children[1].text.to_i).to be > 100
      else
        expect(i.element_children[1].text.to_i).to be < 100
      end
    end
  end

  it "should return notes as a string" do
    @xml_geo.get_notes.each do |i|
      expect(i.text).to be_kind_of(String)
    end
  end






end
