require 'prime'

def determine_prime(num)
  Prime.prime?(num)
end

fibonacci_numbers = []

100.times do |i|
  if i < 2
    fibonacci_numbers << i
  else
    fibonacci_numbers << fibonacci_numbers[i - 2] + fibonacci_numbers[i - 1]
  end
end

fibonacci_numbers.each do |num|
  if determine_prime(num)
    puts num.to_s + " is prime"
  else
    puts num
  end
end
