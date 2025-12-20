# ユーザのデータを作成する
user = []
user << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
user << { first_name: 'Bob', last_name: 'Pytho', age: 30 }

# 氏名を作成するメソッド
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザのデータを表示する
user.each do |user|
  puts "氏名: #{full_name(user)}, 年齢: #{user[:age]}"
end

# クラスで定義したアリスを呼び出す
# p user[0][:first_name] # => "Alice"

# クラス内で定義したメソッドはメソッド名をタイポしてもnilになるので、不具合に気づきにくい
# p user[0][:first_mame] # => nil
