def max_product_of_two(array)
  # 最大値の組み合わせとその積
  max_values = array.max(2)
  max_product = max_values.inject(:*)

  # 最小値の組み合わせ（負の数同士の積）とその積
  min_values = array.min(2)
  min_product = min_values.inject(:*)

  # 最大の積を判定して出力
  if max_product >= min_product
    puts "#{max_product} # (#{max_values.join(' * ')})"
  else
    puts "#{min_product} # (#{min_values.join(' * ')})"
  end
end

# 実行例
max_product_of_two([-10, -20, 5, 6]) # => 200 # (-10 * -20)
max_product_of_two([1, 10, 2, 6, 7, 3]) # => 70 # (10 * 7)
