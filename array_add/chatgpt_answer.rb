def two_sum(numbers, target)
  # 値とインデックスを記録するハッシュ
  seen = {}

  numbers.each_with_index do |num, index|
    complement = target - num

    # 差分が既に見た値に存在する場合、そのインデックスを返す
    if seen.key?(complement)
      return [seen[complement], index].sort
    end

    # 現在の値とそのインデックスを記録
    seen[num] = index
  end
end

# 入力例
numbers = [2, 7, 11, 15]
target = 9

# 出力
puts two_sum(numbers, target).inspect