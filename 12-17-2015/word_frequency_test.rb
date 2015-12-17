require_relative 'word_frequency'
require 'minitest/autorun'
require 'minitest/pride'

class WordFrequencyTest < Minitest::Test
  def test_it_lists_only_five_words
    counter = WordFrequency.new
    words = %w(hi hello kitty cat meow)
    expected = { "hi" => 1,
                 "hello" => 1,
                 "kitty" => 1,
                 "cat" => 1,
                 "meow" => 1 }

    assert_equal expected, counter.list_frequencies(words)
  end

  def test

  end
end
