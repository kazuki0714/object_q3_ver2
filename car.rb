# parent class
class Car
  attr_accessor :type, :speed, :price, :capacity, :height

  @@total_price = 0 # 合計金額
  @@total_count = 0 # 合計台数

  def initialize(type, speed,  price, capacity, height)
    @type = type
    @speed = 0
    @price = price
    @capacity = capacity
    @height = height
    @@total_price += price
    @@total_count += 1
  end

  def equipment
    %w[アクセル ブレーキ]
  end

  def self.total_price
    @@total_price
  end

  def self.average_price
    @@total_price / @@total_count unless @@total_count == 0
  end

end
