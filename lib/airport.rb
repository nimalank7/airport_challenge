require_relative "./plane.rb"

class Airport
  attr_reader :capacity
  attr_accessor :weather
  attr_accessor :size
  DEFAULT_CAPACITY = 1
  def initialize(size = DEFAULT_CAPACITY)
    @capacity = []
    @weather = "good"
    @size = size
  end
  def take_off?
    if @weather == "good" && !empty?
      @capacity.pop
      return true
    end
    return false
  end
  def land(plane)
    if @weather == "stormy" || full? == true
      return false
    end
    @capacity << plane
    true
  end
  def empty?
    @capacity.length == 0 ? true : false
  end
  def full?
    @capacity.length == size ? true : false
  end
end
