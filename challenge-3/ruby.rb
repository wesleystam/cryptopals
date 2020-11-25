input = ['1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'].pack('H*').unpack('C*')

scores = {}

points = %w[u l d r h s n i o a t e]

(65..122).each do |char|
  output = input.map do |byte|
    byte ^ char
  end

  score = output.pack('C*').split('').map do |char|
    (points.find_index(char) || -1) + 1
  end.inject(:+)

  scores[score] = output.pack('C*')
end

key = scores.keys.sort.last
puts scores[key]
