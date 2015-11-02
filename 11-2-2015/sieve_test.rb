require 'minitest/autorun'
require 'minitest/pride'
require_relative 'sieve'

class SieveTest < MiniTest::Unit::TestCase
  def setup
    @sieve = Sieve.new
  end

  def test_it_exists
    assert Sieve
  end

  def test_does_not_eliminate_two
    assert_equal [2], @sieve.find_primes([2])
  end

  def test_does_not_eliminate_two_or_three
    assert_equal [2, 3], @sieve.find_primes([2, 3])
  end

  def test_eliminates_four
    assert_equal [2, 3], @sieve.find_primes([2, 3, 4])
  end

  def test_eliminates_factors_of_two
    assert_equal [2, 3, 5, 7], @sieve.find_primes((2..8).to_a)
  end

  def test_eliminates_factors_of_two_and_three
    numbers = (2..16).to_a
    primes = [2, 3, 5, 7, 11, 13]
    assert_equal primes, @sieve.find_primes(numbers)
  end

  def test_eliminates_all_non_prime_numbers_up_to_50
    numbers = (2..50).to_a
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
    assert_equal primes, @sieve.find_primes(numbers)
  end

  def test_eliminates_all_non_prime_numbers_up_to_100
      numbers = (2..100).to_a
      primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
      assert_equal primes, @sieve.find_primes(numbers)
  end
end
