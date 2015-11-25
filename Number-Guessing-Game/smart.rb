# Not working
# Need guess/2 != fraction 
# Also feel I need pass result of guess back to GuessingGame class.
# Fail.


class SmartPlayer

	def get_guess
	puts "Let me use my computer brain to help you primate."
	puts "I will help you make the right choice. Choose a number 1-100:"
	guess = chomps_to_i

		until guess == number

		 	if guess && number.between?(0, 50)  ## Have to use instance variables because you need to keep track
		 	   puts ((guess + number)/2).to_i   ## If local it would reset after every turn 

			else guess && number.between?(50, 100)
				 puts ((guess + number)/2).to_i
				 guess = chomps_to_i 		
			end
			guess
		end
	end
end

# 	choice = chomps_to_i
# 	a = 1 
# 	b = n
# 	choice = average of previous choices

# 		while(choice != number) {

# 			 if choice < number 
			 	

# 			elsif
# 				(choice > number) {b = choice;}
# 			end

# 			choice = (a+b) /2;}
# 		end
# 	end
# end
