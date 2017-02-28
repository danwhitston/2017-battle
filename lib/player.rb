class Player
  attr_reader :name
  attr_reader :hit_points
  DEFAULT_HIT_POINTS = 60

  def initialize name, hit_points = DEFAULT_HIT_POINTS
    @name = name
    @hit_points = hit_points
  end

  def attack other_player
    other_player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end
end