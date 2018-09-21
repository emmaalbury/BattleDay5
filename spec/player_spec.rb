require 'player'

describe Player do

  subject(:frank) { Player.new('Frank') }
  subject(:phillis) { Player.new("Phillis") }

  context "#name" do
    it "returns name of player" do
      expect(frank.name).to eq "Frank"
    end
  end

  context "#hp" do
    it "returns the HP of the player" do
      expect(frank.hp).to eq 100
    end
  end

  context "#attack" do
    it "reduces the opponent's HP" do
      expect(phillis).to receive(:receive_damage)
      frank.attack(phillis)
    end
  end

  context "#receive_damage" do
    it "reduces HP our" do
      expect(phillis.receive_damage).to eq 90
    end
  end
end
