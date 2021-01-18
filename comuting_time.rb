class CommutingTime

  attr_accessor :arrival_time
  HOME_IZUMOSHI = (60*15)
  IZUMOSHI_MATSUE = (60*60)
  MATSUE_POLYTECH = (60*30)

  def initialize(arrival_time)
    @arrival_time = arrival_time
  end

  def calcdeparture_time
    departure_time = @arrival_time - HOME_IZUMOSHI - IZUMOSHI_MATSUE - MATSUE_POLYTECH
  end

end

time1 = CommutingTime.new(Time.local(2021, 1, 19, 9, 20))
puts time1.calcdeparture_time
