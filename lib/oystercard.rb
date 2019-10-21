class Oystercard
    attr_reader :balance
    LIMIT = 90
    def initialize 
        @balance = 0 
    end
    def top_up (user_input)
        raise "the limit is £#{LIMIT}" if user_input > LIMIT
        @balance += user_input
    end
end 