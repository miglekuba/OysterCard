require 'station'
describe Station do 
it "should show a name of the station" do
station = Station.new("Kings Cross")
    expect(station.name).to eq "Kings Cross"
end
end