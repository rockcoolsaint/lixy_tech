require 'minitest/autorun'
require_relative '../table'

class MyUnitTests < MiniTest::Test

	def test_prime_numbers()
		# test for number 10
		number = 10
		assert_equal prime_numbers(number), [1,2,3,5,7,11,13,17,19,23]
	end

	def test_prime_numbers()
		# test for number 5
		number = 5
		assert_equal prime_numbers(number), [1,2,3,5,7]
	end

end

