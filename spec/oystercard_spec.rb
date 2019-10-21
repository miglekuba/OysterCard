require "oystercard"

describe Oystercard do
    subject {Oystercard.new}
    it "should be 0 balance by default" do
        expect(subject.balance).to eq 0 
    end
end
