
def main
  pikachu = 'ピカチュウ'
  hitokage = 'ヒトカゲ'
  pikachu_hp = 20
  hitokage_hp = 18
  pikachu_attacks = {'10マンボルト！' => 10}
  hitokage_attacks = {'ひのこ！' => 5}

  puts "#{pikachu}があらわれた！#{pikachu}のHPは#{pikachu_hp}だ！"
  puts "#{hitokage}があらわれた！#{hitokage}のHPは#{hitokage_hp}だ！"
  puts ""

  while pikachu_hp > 0 || hitokage_hp > 0
    if hitokage_hp - pikachu_attacks.values[0] >= 0
      hitokage_hp = hitokage_hp - pikachu_attacks.values[0]
      puts "#{pikachu}の攻撃！#{pikachu_attacks.keys[0]}#{hitokage}に#{pikachu_attacks.values[0]}ダメージだ！#{hitokage}のHPは#{hitokage_hp}だ！"
    else
      hitokage_hp = 0
      puts "#{pikachu}の攻撃！#{pikachu_attacks.keys[0]}#{hitokage}に#{pikachu_attacks.values[0]}ダメージだ！#{hitokage}のHPは#{hitokage_hp}だ！"
      return puts "#{hitokage}はたおれた！#{pikachu}の勝ちだ！"
    end

    if pikachu_hp - hitokage_attacks.values[0] >= 0
      pikachu_hp = pikachu_hp - hitokage_attacks.values[0]
      puts "#{hitokage}の攻撃！#{hitokage_attacks.keys[0]}#{pikachu}に#{hitokage_attacks.values[0]}ダメージだ！#{pikachu}のHPは#{pikachu_hp}だ！"
    else
      pikachu_hp = 0
      puts "#{hitokage}の攻撃！#{hitokage_attacks.keys[0]}#{pikachu}に#{hitokage_attacks.values[0]}ダメージだ！#{pikachu}のHPは#{pikachu_hp}だ！"
      return puts "#{pikachu}はたおれた！#{hitokage}の勝ちだ！"
    end
      puts ""
  end
end

main
