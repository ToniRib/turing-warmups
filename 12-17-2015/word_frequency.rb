class WordFrequency
  def list_frequencies(words)
    freq = Hash.new(0)
    words.each { |word| freq[word] += 1 }
    sorted = sort_by_descending_value(freq)
    top_5(sorted)
  end

  def sort_by_descending_value(frequencies)
    frequencies.sort_by { |word, count| [-count, word] }
  end

  def top_5(frequencies)
    frequencies.take(5).to_h
  end
end

class FileReader
  def read(filename)
    words = []
    File.readlines(filename, 'r').each do |line|
      words << line.chomp.split(" ")
    end
    words.flatten
  end
end
