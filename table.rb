class Table
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
end

def displayTable(values)
	# display first row of prime numbers
	values.each do |val|
		# format values for proper spacing 
		if val == 1
			print "   " + " #{val}"
		else
			print "   #{val}"
		end
	end
end

def invalidInput(input)
	number = input.to_i

	if ((!number.is_a? Integer) || (number == 0))
		if ARGV.first
			puts "Invalid input, please make sure you pass an Integer greater than zero."
		else
			puts "Invalid input, please make sure you input a number greater than zero."
		end
		
		exit(0)
	end
end

primeTable = Table.new

if ARGV.first
	invalidInput(ARGV.first)

	number = ARGV.first.to_i

	values = primeTable.prime_numbers(number)

	header = "==================================================\nMultiplication table of the first #{number} prime numbers\n==================================================\n"

	puts header

	displayTable(values)
	puts
	primeTable.multiply(values)
else
	prompt = "enter a number > "
	print prompt 

	num = gets.chomp!

	invalidInput(num)

	number = num.to_i

	values = primeTable.prime_numbers(number)

	header = "==================================================\nMultiplication table of the first #{number} prime numbers\n==================================================\n"

	puts header

	displayTable(values)
	puts
	primeTable.multiply(values)
end
