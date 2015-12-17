class WordFrequency
  def list_frequencies(words)
    freq = Hash.new(0)
    words.each do |word|
      freq[word] += 1
    end
    freq
  end
end
