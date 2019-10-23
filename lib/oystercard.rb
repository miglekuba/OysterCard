class Oystercard
    attr_reader :balance, :in_journey, :entry_station
    LIMIT = 90
    MINIMUM_FARE = 1
    def initialize 
        @balance = 0 
        @entry_station = nil 
    end

    def top_up (user_input)
        raise "the limit is £#{LIMIT}" if user_input > LIMIT
        @balance += user_input
    end

    def deduct (user_input)
        raise "the balance is below 0" if user_input > @balance 
        @balance -= user_input
    end

    def touch_in (station)
        raise "insufficient balance!" if @balance < MINIMUM_FARE
        @entry_station = station
    end

    def touch_out
        @entry_station = nil
        @balance -= MINIMUM_FARE
    end
    def in_journey
        return @entry_station != nil
    end
end 
