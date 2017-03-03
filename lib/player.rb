class Player

  attr_reader :name, :hit_points

  HIT_POINTS = 50

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def reduce_hp
    @hit_points -= 10
  end

end
