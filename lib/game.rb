class Game
  attr_reader :player_1, :player_2, :current_player, :players, :opponent

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_1 = player_1
    @player_2 = player_2
    @current_player = players.first
    @opponent = players.last
  end

  def attack(player)
    player.reduce_hp
    zero_points?(player)
  end

  def change_player(player)
    players.find {|person|
      person != player}
  end

  def switch_turns
    @current_player = change_player(current_player)
    @opponent = change_player(opponent)
  end

  def zero_points?(player)
    player.hit_points == 0
  end

end
