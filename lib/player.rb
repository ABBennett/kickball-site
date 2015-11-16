require 'pry'

class Player
  attr_reader :name, :position, :team_name

  def initialize (name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name

  end

  def self.all
    player_array = []

    require 'json'
    file = File.read('../roster.json')
    roster_hash = JSON.parse(file)

    roster_hash.each do |team_name, players|
      players.each do |position, name|
        player_array << Player.new(name, position, team_name)
      end
    end
    player_array
  end
end

print Player.all
