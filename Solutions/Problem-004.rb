#Finding the largest Palindrome Product

@largest_palindrome_product = 0
def palindrome?(n)
	n == n.to_s.reverse!.to_i 
end

def find_largest_palindrome_product(min, max)
	while max >= min
	  i = max
	  return @largest_palindrome_product if max * i < @largest_palindrome_product 
		while i >= min
			prod = max * i
			if palindrome?(prod)
		    @largest_palindrome_product = prod	if prod > @largest_palindrome_product 
		  end
		  i -= 1
		end
		max -= 1
	end
	@largest_palindrome_product
end

puts find_largest_palindrome_product(100,999)
