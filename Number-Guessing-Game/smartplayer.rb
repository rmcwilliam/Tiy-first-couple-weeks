require 'pry'
class SmartPlayer
	def initialize # just a method, not special, can send data throught this method
		@min = 1
		@max = 100
		@guess = 50  # have to use instance variables so that you can keep track of guesses. 
	end

	# :low, :high
	def get_guess(result)
		if result == :low
			@min = @guess
			@guess = (@min + @max) / 2
		elsif result == :high
			@max = @guess
			@guess = (@min + @max) / 2
		else
			@guess # = 50 could define @guess here, don't have to do it at intialize, practice is to define in intialize
		end
	end
end

# putting private anywhere in the class above methods will hide the methods from others.


	