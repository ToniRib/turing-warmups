vowel_file = File.open('vowel-file.txt', 'w')

File.open('wordlist.txt', 'r') do |f|
  f.each_line do |line|
    if /[^aeiouy]*a{1}[^aeiouy]*e{1}[^aeiouy]*i{1}[^aeiouy]*o{1}[^aeiouy]*u{1}[^aeiouy]*y{1}[^aeiouy]*/.match(line)
      vowel_file.write(line)
    end
  end
end

vowel_file.close
