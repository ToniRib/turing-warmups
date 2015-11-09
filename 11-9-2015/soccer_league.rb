teams = %w(a b c d e f g h)
first_half = teams[0..3]
second_half = teams[4..7]

4.times do |i|
  p first_half.zip(second_half)
  second_half.rotate!
end
