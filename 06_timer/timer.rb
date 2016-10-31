class Timer
  def initialize
    @seconds = 0
  end

  def seconds=(sec)
    @seconds = sec
  end
  def seconds
    @seconds
  end
  def time_string
    hours = @seconds/3600
    minutes = (@seconds%3600)/60
    secs = (@seconds%3600)%60
    '%02d:%02d:%02d' % [hours,minutes,secs]
  end
end
 timer = Timer.new
timer.seconds = 3675
puts timer.time_string
