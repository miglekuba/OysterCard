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
    it "should raise an error if the limit is exeeded" do
        expect{subject.top_up(91)}.to raise_error "the limit is £90"
    end
    it "should check id deduct method is invoked" do
        subject.top_up(10)
        subject.deduct(3)
        expect(subject.balance).to eq 7
    end

end
