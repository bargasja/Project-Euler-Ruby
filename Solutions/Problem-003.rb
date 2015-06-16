n = 600851475143
@prime_factors = []

def largest_prime_factor(n)
	#Filter for even numbers
	while n % 2 == 0
		n /= 2
	end
	return 2 if n == 1
  i = 1
  while n != 1
  i += 2 #skip even numbers
  	if prime?(i)
  		while n % i == 0
  			n /= i
  		end
  	end
  end	
  i
end  

def prime?(n)
  @prime_factors.each do |prime| 
  	return false if n % prime == 0
	end
	@prime_factors << n
end

puts largest_prime_factor()