ary = Array.new

ary = []

str = 'Hello world.'

print 'aryが属するクラスは？', ary.class, "\n"
print 'strが属するクラスは？', str.class, "\n"

print 'aryがArrayクラスのインスタンスか？', ary.instance_of?(Array), "\n"
print 'aryがStringクラスのインスタンスか？', ary.instance_of?(String), "\n"

# Object>Array>ary の関係
print 'aryのスーパークラスはArrayか？', ary.is_a?(Array), "\n"
print 'aryがスーパークラスはObjectか？', ary.is_a?(Object), "\n"
