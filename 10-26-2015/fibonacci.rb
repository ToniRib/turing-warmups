require 'prime'

def fibonacci(n)
  return 0 if n == 1
  return 1 if n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

def determine_prime(num)
  Prime.prime?(num)
end

def prime_string(prime)
  prime ? "is prime" : ""
end

(1..100).to_a.each do |n|
  current_num = fibonacci(n)
  prime_num = determine_prime(current_num)
  prime_str = prime_string(prime_num)

  puts "#{current_num} #{prime_str}"
end
