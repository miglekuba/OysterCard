class Oystercard
    attr_reader :balance, :in_journey
    LIMIT = 90
    def initialize 
        @balance = 0 
        @in_journey = false
    end
    def top_up (user_input)
        raise "the limit is £#{LIMIT}" if user_input > LIMIT
        @balance += user_input
    end
    def deduct (user_input)
        raise "the balance is below 0" if user_input > @balance 
        @balance -= user_input
    end
    def touch_in
        @in_journey = true
    end
    # def touch_out
    #     @in_journey = false
    # end
end 