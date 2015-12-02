def vowel?(l)
  l == 'a' || l == 'e' || l == 'i' || l == 'o' || l == 'u' || l == 'y'
end

vowel_file = File.open('vowel-file.txt', 'w')

File.open('wordlist.txt', 'r') do |f|
  f.each_line do |w|
    letter_index = [w.index('a'), w.index('e'), w.index('i'), w.index('o'), w.index('u'), w.index('y')]
    if (letter_index.length == letter_index.compact.length) && (letter_index.sort == letter_index)
      vowels_only = w.chars.delete_if { |l| !vowel?(l) }
      if vowels_only.uniq.length == vowels_only.length
        vowel_file.write(w)
      end
    end
  end
end

vowel_file.close
