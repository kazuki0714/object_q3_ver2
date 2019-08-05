require_relative 'ferrari'
require_relative 'honda'
require_relative 'nissan'

def main
  (1..rand(10)).each do
  h = Honda.new("Honda", 10, 100+rand(50..100), 8, 100)
  n = Nissan.new("Nissan", 10, 50+rand(1..50), 5, 100)
  f = Ferrari.new("Ferrari", 100, 2_000+rand(500..1000), 2, 100)
  end

  puts "合計金額:#{Car.total_price}万円"
  puts "平均金額: #{Car.average_price}万円"
end

def output_information(h,n,f)
    puts "車種\t\tHonda\t\tNissan\t\tFerrari"
    puts "価格\t\t#{h.price}\t\t#{n.price}\t\t#{f.price}"
    puts "定員\t\t#{h.capacity}\t\t#{n.capacity}\t\t#{f.capacity}"
    puts "加速\t\t#{h.speed}\t\t#{n.speed}\t\t#{f.speed}"
    puts "車高\t\t#{h.height}\t\t#{n.height}\t\t#{f.height}"
end

if __FILE__ == $0
  main
end
