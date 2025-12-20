# SugarWaterBuilder: 砂糖水を生成するためのインターフェイス (Builder)
class SugarWaterBuilder
  def initialize
    @sugar_water = SugarWater.new(0,0)
  end

  # 砂糖を加える
  def add_sugar(sugar_amount)
    @sugar_water.sugar += sugar_amount
  end

  # 水を加える
  def add_water(water_amount)
    @sugar_water.water += water_amount
  end

  # 砂糖水の状態を返す
  def result
    @sugar_water
  end
end
