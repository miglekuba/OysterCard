require "oystercard"

describe Oystercard do
    subject {Oystercard.new}
    it "should be 0 balance by default" do
        expect(subject.balance).to eq 0 
    end
    it "checks if topup method is invoked" do 
        subject.top_up(5)
        expect(subject.balance).to eq 5
    end
end
