class Oystercard
    attr_reader :balance
    def initialize 
        @balance = 0 
    end
    def top_up (user_input)
        @balance += user_input
    end
end