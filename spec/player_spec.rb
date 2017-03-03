require 'player'

describe Player do
  subject(:john) { described_class.new ("John")}
  subject(:flora) { described_class.new ("Flora")}

  describe '#name' do
    it "expects to return the player's name" do
      expect(john.name).to eq("John")
    end
  end

  describe '#hit points' do
    it 'returns the hitpoints' do
      expect(john.hit_points).to eq(100)
    end
  end

  describe '#reduce_hp' do
    it 'reduces its own hitpoints by 10' do
      expect{flora.reduce_hp}.to change {flora.hit_points}.by(-10)
    end
  end

end
