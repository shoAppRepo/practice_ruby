def bingo
  bingo = ['B', 'I', 'N', 'G', 'O']
  first = (1..15).to_a.shuffle.sample(5)
  second = (16..30).to_a.shuffle.sample(5)
  third = (31..45).to_a.shuffle.sample(5)
  fourth = (46..60).to_a.shuffle.sample(5)
  fifth = (61..75).to_a.shuffle.sample(5)

  bingo_array = [first, second, third, fourth, fifth].transpose

  p bingo.map{|cell| cell.rjust(3)}.join(' ')
  bingo_array.each do |row|
    p row.map{|num| num.to_s.rjust(3)}.join(' ')
  end
end

bingo