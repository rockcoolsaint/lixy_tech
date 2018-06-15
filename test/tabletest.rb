require 'minitest/autorun'
require_relative '../table'

class MyUnitTests < MiniTest::Test

	#def test_room()
		#gold = Room.new("GoldRoom","""This room has gold in it you can grab. There's a 
			#door to the north.""")
		#assert_equal(gold.name, "GoldRoom")
		#assert_equal(gold.paths, {})
	#end

	def test_prime_numbers()
		# test for number 10
		number = 10
		assert_equal prime_numbers(number), [1,2,3,5,7,11,13,17,19,23], msg = "Success"
	end

	def test_prime_numbers()
		# test for number 5
		number = 5
		assert_equal prime_numbers(number), [1,2,3,5,7], msg = "Success"
	end

end

