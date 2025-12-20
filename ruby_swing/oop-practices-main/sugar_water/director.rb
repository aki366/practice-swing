# Director： 砂糖水の作成過程を取り決める
class Director
  def initialize(builder)
    @builder = builder
  end
  # 砂糖水の作成過程を定義する
  def cook
    @builder.add_water(150)
    @builder.add_sugar(90)
    @builder.add_water(300)
    @builder.add_sugar(35)
  end
end
