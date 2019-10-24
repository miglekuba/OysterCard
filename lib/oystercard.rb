class Oystercard
    attr_reader :balance, :in_journey, :entry_station, :journey_list
    LIMIT = 90
    MINIMUM_FARE = 1
    def initialize 
        @balance = 0 
        @entry_station = nil 
        @journey_list = []
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
        journey = Hash.new
        journey[:entry_station] = station
        @journey_list << journey
    
    end

    def touch_out (station)
        @entry_station = nil
        @balance -= MINIMUM_FARE
        journey = @journey_list.pop
        journey[:exit_station] = station
        @journey_list << journey
        
    end
    def in_journey
        return @entry_station != nil
    end
    

end 
