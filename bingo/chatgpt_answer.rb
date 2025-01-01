def generate_bingo_card
  # 各列の範囲を定義
  columns = {
    'B' => (1..15).to_a,
    'I' => (16..30).to_a,
    'N' => (31..45).to_a,
    'G' => (46..60).to_a,
    'O' => (61..75).to_a
  }

  # 各列からランダムに5つの数字を選択
  card = columns.transform_values { |range| range.sample(5) }

  # 真ん中のセルを 'FREE' に設定
  card['N'][2] = 'FREE'

  # ヘッダーを表示
  puts ' B |  I |  N |  G |  O'

  # ビンゴカードの行を表示
  (0..4).each do |i|
    row = card.map { |_, numbers| numbers[i].to_s.rjust(2) }
    puts row.join(' | ')
  end
end

generate_bingo_card
