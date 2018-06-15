def multiply(arr)
	arr.each do |i|
		arr.each_with_index do |j, index|
			# first column prime numbers
			if index == 0
				print "#{i * j}"
			end
			# product of first row and first column 
			print	"   #{i * j}"
			if index == (arr.length - 1)
				puts
			end
		end
	end
end

def prime_numbers(num)
	prime_arr = [1]
	n = 2
	
	while prime_arr.length < num
		count = 0
    	i = 1
	    while i <= n && count <= 2
	      if n % i == 0
	        count += 1
	      end
	      i += 1
	    end
	    if count == 2
	      prime_arr << n
	    end
	    n += 1
	end
	return prime_arr
end

number = ARGV.first.to_i

values = prime_numbers(number)

# display first row of prime numbers
values.each do |val|
	# format values for proper spacing 
	if val == 1
		print "   " + " #{val}"
	else
		print "   #{val}"
	end
end
puts
multiply(values)
