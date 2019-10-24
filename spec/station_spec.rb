require 'station'
describe Station do 
it "should show a name of the station" do
station = Station.new("Kings Cross", "First")
    expect(station.name).to eq "Kings Cross"
end
it "should show a zone of the station" do
    station = Station.new("Kings Cross", "First")
        expect(station.zone).to eq  "First"
    end
end