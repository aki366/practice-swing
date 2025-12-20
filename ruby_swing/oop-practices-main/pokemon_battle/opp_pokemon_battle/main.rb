require_relative 'battle'

class Main
  def self.start
    ids = [1, 2]
    battle = Battle.new(ids)
    battle.progress
  end
end

Main.start
