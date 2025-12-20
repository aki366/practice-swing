class Battle
  require 'json'

  attr_reader :pokemon_list

  def initialize(ids)
    @ids = ids
  end

  def pokemon_list
    pokemons = JSON.parse(File.read('pokemons.json'), symbolize_names: true)
    pokemons.select { |pokemon| @ids.include?(pokemon[:id]) }
  end

  def progress
    introduce_battle_pokemon
    pokemon = pokemon_list

    while pokemon[0][:hp] > 0 && pokemon[1][:hp] > 0
      case
      when attack(pokemon[0], pokemon[1]) == 0
        return print "\n#{pokemon[1][:name]}はたおれた！#{pokemon[0][:name]}の勝ちだ！\n"
      when attack(pokemon[1], pokemon[0]) == 0
        return print "\n#{pokemon[0][:name]}はたおれた！#{pokemon[1][:name]}の勝ちだ！\n"
      end
    end
  end

  def introduce_battle_pokemon
    pokemon_list.each do |pokemon|
      puts "#{pokemon[:name]}があらわれた！#{pokemon[:name]}のHPは#{pokemon[:hp]}だ！"
    end
    print "\n"
  end

  def attack(attacker, defender)
    if defender[:hp] - attacker[:attacks][0][:power] > 0
      defender[:hp] = defender[:hp] - attacker[:attacks][0][:power]
    else
      defender[:hp] = 0
    end

    print "#{attacker[:name]}の攻撃！#{attacker[:attacks][0][:name]}！"
    print "#{defender[:name]}に#{attacker[:attacks][0][:power]}ダメージ！"
    print "#{defender[:name]}のHPは#{defender[:hp]}だ！\n"

    defender[:hp]
  end
end
