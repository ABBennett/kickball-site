require 'spec_helper'

describe Player do
  let(:player) {Player.new("Adam M","1st Base","Launchers")}
  describe ".new" do
    it "should create a new player" do
      expect(player).to be_a(Player)
    end

    it "should have a reader for name" do
      expect(player.name).to eq("Adam M")
    end

    it "should have a reader for position" do
      expect(player.position).to eq("1st Base")
    end

    it "should have a reader for team_name" do
      expect(player.team_name).to eq("Launchers")
    end
  end
end
