scores = {}
points = %w[u l d r h s n i o a t e]

File.read('./challenge-4/4.txt').split("\n").each do |line|
  (0..122).each do |char|
    output = [line].pack('H*').unpack('C*').map do |byte|
      byte ^ char
    end

    score = output.pack('C*').split('').map do |char|
      (points.find_index(char) || -1) + 1
    end.inject(:+)

    scores[score] = output.pack('C*')
  end
end

key = scores.keys.sort.last
puts scores[key]
