class Sieve
  def find_primes(numbers)
    primes = numbers

    2.upto(numbers.last) do |i|
      break if i == primes.length
      delete_non_primes(primes, i)
    end

    primes
  end

  def delete_non_primes(primes, i)
    primes.delete_if { |n| n % i == 0 && n != i }
  end
end
