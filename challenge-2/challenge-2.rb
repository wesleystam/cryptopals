inputA = '1c0111001f010100061a024b53535009181c'
inputB = '686974207468652062756c6c277320657965'

bytesA = [inputA].pack('H*').unpack('C*')
bytesB = [inputB].pack('H*').unpack('C*')

output = bytesA.zip(bytesB).map { |a, b|
  a ^ b
}.pack('C*')

puts output.bytes.map { |b| b.to_s(16) }.join
