require 'player'

describe Player do
  subject(:player) { described_class.new ("John")}


  it "expects to return the player's name" do
    expect(player.name).to eq("John")
  end
end
