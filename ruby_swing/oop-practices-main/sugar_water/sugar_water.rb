# SugarWater： 砂糖水クラス (ConcreteBuilder：ビルダーの実装部分)
class SugarWater
  attr_accessor :water, :sugar
  def initialize(water, sugar)
    @water = water
    @sugar = sugar
  end
end
