# Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end
end

# ユーザのデータを作成する
user = []
user << User.new('Alice', 'Ruby', 20)
user << User.new('Bob', 'Pytho', 30)

# 氏名を作成するメソッド

# ユーザのデータを表示する
user.each do |user|
  puts "氏名: #{user.full_name(user)}, 年齢: #{user.age}"
end

# クラスで定義したアリスを呼び出す
# p user[0].first_name # => "Alice"

# クラス内で定義したメソッドはメソッド名をタイポした場合にエラーになるので、不具合に気づきやすい
# p user[0].first_mame # => undefined method `first_mame' for #<User:0x0000000100ae61d0
