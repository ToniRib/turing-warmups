require 'pry'
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

  def test_it_counts_multiples_of_words
    counter = WordFrequency.new
    words = %w(hi hello hi kitty kitty cat cat cat meow)
    expected = { "hi" => 2,
                 "hello" => 1,
                 "kitty" => 2,
                 "cat" => 3,
                 "meow" => 1 }

    assert_equal expected, counter.list_frequencies(words)
  end

  def test_it_lists_only_the_top_five_words_in_descending_order
    counter = WordFrequency.new
    words = %w(hi hello hello hi kitty kitty cat cat cat meow meow meow purr)
    expected = { "cat" => 3,
                 "meow" => 3,
                 "hello" => 2,
                 "hi" => 2,
                 "kitty" => 2 }

    assert_equal expected, counter.list_frequencies(words)
  end

  def test_it_lists_top_five_words_from_file
    counter = WordFrequency.new
    words = FileReader.new.read('i_have_a_dream.txt')

    expected = { "the" => 137,
                 "of" => 111,
                 "a" => 90,
                 "and" => 87,
                 "to" => 87
    }

    assert_equal expected, counter.list_frequencies(words)
  end
end
