require 'game'

describe Game do
  let (:game) { described_class.new(john, flora) }
  let (:john) {Player.new("John")}
  let (:flora) {Player.new("Flora")}

  describe "#attack" do
    it "makes an attack" do
      expect(flora).to receive(:reduce_hp)
      game.attack(flora)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq john
    end
  end

  describe "#switch_turns" do
    it "alternates players" do
      expect{game.switch_turns}.to change{game.current_player}.to john
    end
  end

  describe '#winning' do
    it 'shows the winner when the opponent reaches 0HP' do
      allow(game.player_2).to receive(:hit_points).and_return(10)
      expect(game).to receive(:confirm_winner)
      game.attack(flora)
    end
  end

end
