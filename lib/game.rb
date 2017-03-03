class Game
  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_2
  end

  def attack(player)
    player.reduce_hp
  end

  def switch_turns
    players = [player_1, player_2]
    @current_player = players.find { |player|
      player != current_player
      }
  end

end
